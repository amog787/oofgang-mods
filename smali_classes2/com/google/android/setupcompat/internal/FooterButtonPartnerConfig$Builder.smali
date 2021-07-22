.class public Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;
.super Ljava/lang/Object;
.source "FooterButtonPartnerConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private buttonBackgroundConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field private buttonDisableAlphaConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field private buttonDisableBackgroundConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field private buttonIconConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field private buttonRadiusConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field private buttonRippleColorAlphaConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field private buttonTextColorConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field private buttonTextSizeConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field private buttonTextTypeFaceConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field private final footerButton:Lcom/google/android/setupcompat/template/FooterButton;

.field private partnerTheme:I


# direct methods
.method public constructor <init>(Lcom/google/android/setupcompat/template/FooterButton;)V
    .locals 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->buttonBackgroundConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 103
    iput-object v0, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->buttonDisableAlphaConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 104
    iput-object v0, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->buttonDisableBackgroundConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 105
    iput-object v0, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->buttonIconConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 106
    iput-object v0, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->buttonTextColorConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 107
    iput-object v0, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->buttonTextSizeConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 108
    iput-object v0, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->buttonTextTypeFaceConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 109
    iput-object v0, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->buttonRadiusConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 110
    iput-object v0, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->buttonRippleColorAlphaConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 114
    iput-object p1, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->footerButton:Lcom/google/android/setupcompat/template/FooterButton;

    .line 116
    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterButton;->getTheme()I

    move-result p1

    iput p1, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->partnerTheme:I

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;
    .locals 13

    .line 170
    new-instance v12, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;

    iget v1, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->partnerTheme:I

    iget-object v2, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->buttonBackgroundConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    iget-object v3, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->buttonDisableAlphaConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    iget-object v4, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->buttonDisableBackgroundConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    iget-object v5, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->buttonIconConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    iget-object v6, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->buttonTextColorConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    iget-object v7, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->buttonTextSizeConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    iget-object v8, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->buttonTextTypeFaceConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    iget-object v9, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->buttonRadiusConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    iget-object v10, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->buttonRippleColorAlphaConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;-><init>(ILcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$1;)V

    return-object v12
.end method

.method public setButtonBackgroundConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->buttonBackgroundConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    return-object p0
.end method

.method public setButtonDisableAlphaConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->buttonDisableAlphaConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    return-object p0
.end method

.method public setButtonDisableBackgroundConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->buttonDisableBackgroundConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    return-object p0
.end method

.method public setButtonIconConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->buttonIconConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    return-object p0
.end method

.method public setButtonRadiusConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->buttonRadiusConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    return-object p0
.end method

.method public setButtonRippleColorAlphaConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->buttonRippleColorAlphaConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    return-object p0
.end method

.method public setPartnerTheme(I)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;
    .locals 0

    .line 165
    iput p1, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->partnerTheme:I

    return-object p0
.end method

.method public setTextColorConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->buttonTextColorConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    return-object p0
.end method

.method public setTextSizeConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->buttonTextSizeConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    return-object p0
.end method

.method public setTextTypeFaceConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->buttonTextTypeFaceConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    return-object p0
.end method
