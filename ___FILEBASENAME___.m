//___FILEHEADER___

#import "___FILEBASENAME___.h"
@interface ___FILEBASENAMEASIDENTIFIER___()
@property (nonatomic, strong) UIImageView *mIconView;
@property (nonatomic, strong) UILabel *mTitleLabel;
@property (nonatomic, strong) UIButton *mButton;
@property (nonatomic, strong) UILabel *mDesLabel;
@property (nonatomic, strong) UIView *mLine;
@end

@implementation ___FILEBASENAMEASIDENTIFIER___

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self.contentView addSubview:self.mIconView];
        [self.contentView addSubview:self.mTitleLabel];
        [self.contentView addSubview:self.mButton];
        [self.contentView addSubview:self.mDesLabel];
        [self.contentView addSubview:self.mLine];

        [self.mIconView mas_makeConstraints:^(MASConstraintMaker *make) {
        }];
        
        [self.mTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        }];
        
        [self.mButton mas_makeConstraints:^(MASConstraintMaker *make) {
        }];
        
        
        [self.mDesLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        }];
        
        [self.mLine mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.bottom.equalTo(self.contentView);
            make.height.equalTo(@0.5);
        }];
    }
    return self;
}

- (void)configCell:(id)model
          showLine:(BOOL)showLine{
    self.mLine.hidden = !showLine;
}

#pragma mark - Getter

- (UIImageView *)mIconView{
    if (_mIconView == nil) {
        _mIconView = [[UIImageView alloc]init];
        _mIconView.contentMode = UIViewContentModeScaleAspectFill;
        [_mIconView hh_cornerRadius:20];
    }
    return _mIconView;
}

- (UILabel *)mTitleLabel{
    if (_mTitleLabel == nil) {
        _mTitleLabel = [[UILabel alloc]init];
        _mTitleLabel.backgroundColor = [UIColor whiteColor];
        _mTitleLabel.font = commenFontMedium(16);
        _mTitleLabel.textColor = Text33Color;
    }
    return _mTitleLabel;
}

- (UIButton *)mButton{
    if (_mButton == nil) {
        _mButton = [UIButton buttonWithType:UIButtonTypeCustom];
        @weakify(self);
        [_mButton hh_setAction:^{
            @strongify(self);
//            if (self.mResendAction) {
//                self.mResendAction();
//            }
        }];
    }
    return _mButton;
}

- (UILabel *)mDesLabel{
    if (_mDesLabel == nil) {
        _mDesLabel = [[UILabel alloc]init];
        _mDesLabel.backgroundColor = [UIColor whiteColor];
        _mDesLabel.font = commenFontRegular(14);
        _mDesLabel.textColor = Text99Color;
    }
    return _mDesLabel;
}

- (UIView *)mLine{
    if (_mLine == nil) {
        _mLine = [[UIView alloc]init];
        _mLine.backgroundColor = [UIColor colorNamed:@"separatorLineColor"];
    }
    return _mLine;
}

@end
