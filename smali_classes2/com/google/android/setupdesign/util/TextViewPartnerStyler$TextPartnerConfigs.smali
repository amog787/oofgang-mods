.class public Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;
.super Ljava/lang/Object;
.source "TextViewPartnerStyler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupdesign/util/TextViewPartnerStyler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextPartnerConfigs"
.end annotation


# instance fields
.field private final textColorConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field private final textFontFamilyConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field private final textGravity:I

.field private final textLinkedColorConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field private final textSizeConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;


# direct methods
.method public constructor <init>(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;I)V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textColorConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 95
    iput-object p2, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textLinkedColorConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 96
    iput-object p3, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textSizeConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 97
    iput-object p4, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textFontFamilyConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 98
    iput p5, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textGravity:I

    return-void
.end method


# virtual methods
.method public getTextColorConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textColorConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    return-object p0
.end method

.method public getTextFontFamilyConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textFontFamilyConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    return-object p0
.end method

.method public getTextGravity()I
    .locals 0

    .line 118
    iget p0, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textGravity:I

    return p0
.end method

.method public getTextLinkedColorConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textLinkedColorConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    return-object p0
.end method

.method public getTextSizeConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textSizeConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    return-object p0
.end method
