//
//  TeamTableViewCell.swift
//  FootballChants
//
//  Created by Cumali Han Ünlü on 16.05.2022.
//

import UIKit

class TeamTableViewCell: UITableViewCell {
    
    static let cellId = "TeamTableViewCell"
    
    
    private lazy var containerVw: UIView = {
        let vw = UIView()
        vw.translatesAutoresizingMaskIntoConstraints = false
        return vw
    }()
    
    private lazy var contentStackVw: UIStackView = {
        let stackVwv = UIStackView()
        stackVwv.translatesAutoresizingMaskIntoConstraints = false
        stackVwv.spacing = 4
        stackVwv.axis = .vertical
        return stackVwv
    }()
    
    private lazy var badgeImgVw: UIImageView = {
        let imgVw = UIImageView()
        imgVw.translatesAutoresizingMaskIntoConstraints = false
        imgVw.contentMode = .scaleAspectFit
        return imgVw
    }()
    
    private lazy var playbackBtn: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.tintColor = .white
        return btn
        
    }()
    
    private lazy var nameLbl: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.numberOfLines = 0
        lbl.font = .systemFont(ofSize: 18, weight: .bold)
        lbl.textColor = .white
        return lbl
    }()
    private lazy var foundedLbl: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.numberOfLines = 0
        lbl.font = .systemFont(ofSize: 12, weight: .light)
        lbl.textColor = .white
        return lbl
    }()
    
    private lazy var jobLbl: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.numberOfLines = 0
        lbl.font = .systemFont(ofSize: 10, weight: .light)
        lbl.textColor = .white
        return lbl
    }()
    
    private lazy var infoLbl: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.numberOfLines = 0
        lbl.font = .systemFont(ofSize: 12, weight: .medium)
        lbl.textColor = .white
        return lbl
    }()
    
    
    
//    MARK: - Life Cycle
    
    override func layoutSubviews() {
        super.layoutSubviews()
        containerVw.layer.cornerRadius = 10
        
    }
    
    
    func configure() {
        containerVw.backgroundColor = TeamType.arsenal.background
        
        
        badgeImgVw.image = TeamType.arsenal.badge
        
        playbackBtn.setImage(UIImage(systemName: "play.circle.fill", withConfiguration: UIImage.SymbolConfiguration(pointSize: 32)),for: .normal)
        
        nameLbl.text = "Arsenal"
        foundedLbl.text = "1000"
        jobLbl.text = "Current Manager: Mikel Arteta"
        infoLbl.text = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
        
        self.contentView.addSubview(containerVw)
        containerVw.addSubview(contentStackVw)
        containerVw.addSubview(badgeImgVw)
        containerVw.addSubview(playbackBtn)
        
        
        contentStackVw.addArrangedSubview(nameLbl)
        contentStackVw.addArrangedSubview(foundedLbl)
        contentStackVw.addArrangedSubview(jobLbl)
        contentStackVw.addArrangedSubview(infoLbl)
        
        
        NSLayoutConstraint.activate([
            containerVw.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 8),
            containerVw.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -8),
            containerVw.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -8),
            containerVw.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 8),
            
            
            badgeImgVw.heightAnchor.constraint(equalToConstant: 50),
            badgeImgVw.widthAnchor.constraint(equalToConstant: 50),
            badgeImgVw.topAnchor.constraint(equalTo: contentStackVw.topAnchor),
            badgeImgVw.leadingAnchor.constraint(equalTo: containerVw.leadingAnchor, constant: 8),
           
            
            contentStackVw.topAnchor.constraint(equalTo: containerVw.topAnchor, constant: 16),
            contentStackVw.bottomAnchor.constraint(equalTo: containerVw.bottomAnchor, constant: -16),
            contentStackVw.leadingAnchor.constraint(equalTo: badgeImgVw.trailingAnchor, constant: 8),
            contentStackVw.trailingAnchor.constraint(equalTo: playbackBtn.leadingAnchor, constant: -8),
            
            playbackBtn.heightAnchor.constraint(equalToConstant: 44),
            playbackBtn.widthAnchor.constraint(equalToConstant: 44),
            playbackBtn.trailingAnchor.constraint(equalTo: containerVw.trailingAnchor, constant: -8),
            playbackBtn.centerYAnchor.constraint(equalTo: containerVw.centerYAnchor)

            
            
//
//            contentStackVw.topAnchor.constraint(equalTo: self.containerVw.topAnchor, constant: 8),
//            contentStackVw.bottomAnchor.constraint(equalTo: self.containerVw.bottomAnchor, constant: -8),
//            contentStackVw.leadingAnchor.constraint(equalTo: self.containerVw.leadingAnchor, constant: 8),
//            contentStackVw.trailingAnchor.constraint(equalTo: self.containerVw.trailingAnchor, constant: -8)
//
//
        ])
    }
}
