//
//  DCTAddressBridge.swift
//  ZBombBridge
//
//  Created by three stone 王 on 2020/3/20.
//  Copyright © 2020 three stone 王. All rights reserved.
//

import Foundation
import DCTTable
import RxDataSources
import DCTCocoa
import DCTHud
import RxCocoa
import RxSwift
import DCTBean

@objc (DCTAddressActionType)
public enum DCTAddressActionType: Int {
    
    case added
    
    case accessory
    
    case insert
    
    case delete
    
    case edit
}

public typealias DCTAddressLoadingStatus = (_ status: Int) -> ()

public typealias DCTAddressAction = (_ actionType: DCTAddressActionType,_ ip: IndexPath?,_ address: DCTAddressBean?) -> ()

@objc (DCTAddressBridge)
public final class DCTAddressBridge: DCTBaseBridge {
    
    typealias Section = DCTAnimationSetionModel<DCTAddressBean>
    
    var dataSource: RxTableViewSectionedAnimatedDataSource<Section>!
    
    var viewModel: DCTAddressViewModel!
    
    weak var vc: DCTTableLoadingViewController!
    
    var addressAction: DCTAddressAction!
    
}

extension DCTAddressBridge {
    
    @objc public func createAddress(_ vc: DCTTableLoadingViewController ,status: @escaping DCTAddressLoadingStatus ,addressAction: @escaping DCTAddressAction ) {
        
        if let addItem = vc.view.viewWithTag(301) as? UIButton {
            
            self.vc = vc
            
            self.addressAction = addressAction
            
            let input = DCTAddressViewModel.WLInput(modelSelect: vc.tableView.rx.modelSelected(DCTAddressBean.self),
                                                    itemSelect: vc.tableView.rx.itemSelected,
                                                    headerRefresh: vc.tableView.mj_header!.rx.DCTRefreshing.asDriver(),
                                                    itemAccessoryButtonTapped: vc.tableView.rx.itemAccessoryButtonTapped.asDriver() ,
                                                    addItemTaps: addItem.rx.tap.asSignal())
            
            viewModel = DCTAddressViewModel(input, disposed: disposed)
            
            let dataSource = RxTableViewSectionedAnimatedDataSource<Section>(
                animationConfiguration: AnimationConfiguration(insertAnimation: .fade, reloadAnimation: .fade, deleteAnimation: .left),
                decideViewTransition: { _,_,_  in return .reload },
                configureCell: { ds, tv, ip, item in return vc.configTableViewCell(item, for: ip)},
                canEditRowAtIndexPath: { _,_ in return true })
            
            viewModel
                .output
                .tableData
                .asDriver()
                .map({ $0.map({ Section(header: $0.encoded, items: [$0]) }) })
                .drive(vc.tableView.rx.items(dataSource: dataSource))
                .disposed(by: disposed)
            
            self.dataSource = dataSource
            
            viewModel
                .output
                .zip
                .subscribe(onNext: { (type,ip) in
                    
                    vc.tableViewSelectData(type, for: ip)
                })
                .disposed(by: disposed)
            
            viewModel
                .output
                .itemAccessoryButtonTapped
                .drive(onNext: { (ip) in
                    
                    let values = self.viewModel.output.tableData.value
                    
                    addressAction(.accessory, ip, values[ip.section])
                    
                })
                .disposed(by: disposed)
            
            viewModel
                .output
                .addItemed
                .drive(onNext: { (_) in
                    
                    addressAction(.added, nil, nil)
                })
                .disposed(by: disposed)
            
            vc
                .tableView
                .rx
                .setDelegate(self)
                .disposed(by: disposed)
            
            let endHeaderRefreshing = viewModel.output.endHeaderRefreshing
            
            endHeaderRefreshing
                .map({ _ in return true })
                .drive(vc.tableView.mj_header!.rx.DCTEndRefreshing)
                .disposed(by: disposed)
            
            endHeaderRefreshing
                .drive(onNext: { (res) in
                    switch res {
                    case .fetchList:
                        vc.loadingStatus = .succ
                        
                        status(0)
                    case let .failed(msg):
                        DCTHud.showInfo(msg)
                        vc.loadingStatus = .fail
                        status(-1)
                    case .empty:
                        vc.loadingStatus = .succ
                        
                        vc.tableViewEmptyShow()
                        status(1);
                        
                    default:
                        break
                    }
                })
                .disposed(by: disposed)
            
        }
    }
    
    @objc public func insertAddress(_ address: DCTAddressBean ,addressAction: @escaping DCTAddressAction) {
        
        var values = viewModel.output.tableData.value
        
        if values.isEmpty {
            
            self.vc.tableViewEmptyHidden()
        }
        values.insert(address, at: 0)
        
        viewModel.output.tableData.accept(values)
        
        addressAction(.insert, nil, nil)
    }
    @objc public func updateAddress(_ address: DCTAddressBean ,ip: IndexPath) {
        
        var values = viewModel.output.tableData.value
        
        values.replaceSubrange(ip.section..<ip.section+1, with: [address])
        
        viewModel.output.tableData.accept(values)
        
    }
    
}
extension DCTAddressBridge: UITableViewDelegate {
    
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        guard let datasource = dataSource else { return 0}
        
        return vc.caculate(forCell: datasource[indexPath], for: indexPath)
    }
    
    public func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        
        let delete = UITableViewRowAction(style: .destructive, title: "删除地址") { [weak self] (a, ip) in
            
            guard let `self` = self else { return }
        
            self.addressAction(.delete, indexPath, self.dataSource[indexPath])
        }
        
        let cancel = UITableViewRowAction(style: .default, title: "取消") { (a, ip) in
            
        }
        
        let edit = UITableViewRowAction(style: .default, title: "编辑地址") { [weak self] (a, ip) in
            guard let `self` = self else { return }
            
                self.addressAction(.edit, indexPath, self.dataSource[indexPath])
        }
        
        return [cancel,edit,delete]
    }
    
    @objc public func removeAddress(_ address: DCTAddressBean ,ip: IndexPath) {
        
        DCTHud.show(withStatus: "删除地址中...")

        DCTAddressViewModel
            .removeAddress(address.encoded)
            .drive(onNext: { [weak self] (result) in

                guard let `self` = self else { return }
                switch result {
                case .ok:

                    DCTHud.pop()

                    DCTHud.showInfo("删除地址成功")

                    var value = self.viewModel.output.tableData.value

                    value.remove(at: ip.row)

                    self.viewModel.output.tableData.accept(value)

                    if value.isEmpty {

                        self.vc.tableViewEmptyShow()
                    }

                case .failed:

                    DCTHud.pop()

                    DCTHud.showInfo("删除当前地址失败")
                default: break;

                }
            })
            .disposed(by: self.disposed)
    }
}
