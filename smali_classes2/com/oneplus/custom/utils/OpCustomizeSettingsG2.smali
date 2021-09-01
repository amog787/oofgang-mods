.class public Lcom/oneplus/custom/utils/OpCustomizeSettingsG2;
.super Lcom/oneplus/custom/utils/OpCustomizeSettings;
.source "OpCustomizeSettingsG2.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/oneplus/custom/utils/OpCustomizeSettings;-><init>()V

    return-void
.end method


# virtual methods
.method protected getCustomization()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;
    .locals 2

    .line 72
    sget-object p0, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->NONE:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    .line 73
    invoke-static {}, Lcom/oneplus/custom/utils/ParamReader;->getCustFlagVal()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 87
    :pswitch_0
    sget-object p0, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->C88:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    goto :goto_0

    .line 84
    :pswitch_1
    sget-object p0, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->RED:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    goto :goto_0

    .line 81
    :pswitch_2
    sget-object p0, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->OPR_RETAIL:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    goto :goto_0

    .line 78
    :pswitch_3
    sget-object p0, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->MCL:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    goto :goto_0

    .line 75
    :cond_0
    sget-object p0, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->AVG:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getSoftwareType()Lcom/oneplus/custom/utils/OpCustomizeSettings$SW_TYPE;
    .locals 2

    .line 31
    sget-object p0, Lcom/oneplus/custom/utils/OpCustomizeSettings$SW_TYPE;->DEFAULT:Lcom/oneplus/custom/utils/OpCustomizeSettings$SW_TYPE;

    .line 32
    invoke-static {}, Lcom/oneplus/custom/utils/ParamReader;->getSwTypeVal()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 63
    :pswitch_0
    sget-object p0, Lcom/oneplus/custom/utils/OpCustomizeSettings$SW_TYPE;->C532:Lcom/oneplus/custom/utils/OpCustomizeSettings$SW_TYPE;

    goto :goto_0

    .line 60
    :pswitch_1
    sget-object p0, Lcom/oneplus/custom/utils/OpCustomizeSettings$SW_TYPE;->ATT:Lcom/oneplus/custom/utils/OpCustomizeSettings$SW_TYPE;

    goto :goto_0

    .line 57
    :pswitch_2
    sget-object p0, Lcom/oneplus/custom/utils/OpCustomizeSettings$SW_TYPE;->VERIZON:Lcom/oneplus/custom/utils/OpCustomizeSettings$SW_TYPE;

    goto :goto_0

    .line 54
    :pswitch_3
    sget-object p0, Lcom/oneplus/custom/utils/OpCustomizeSettings$SW_TYPE;->SPRINT:Lcom/oneplus/custom/utils/OpCustomizeSettings$SW_TYPE;

    goto :goto_0

    .line 51
    :pswitch_4
    sget-object p0, Lcom/oneplus/custom/utils/OpCustomizeSettings$SW_TYPE;->TMO:Lcom/oneplus/custom/utils/OpCustomizeSettings$SW_TYPE;

    goto :goto_0

    .line 47
    :cond_0
    sget-object p0, Lcom/oneplus/custom/utils/OpCustomizeSettings$SW_TYPE;->EU:Lcom/oneplus/custom/utils/OpCustomizeSettings$SW_TYPE;

    goto :goto_0

    .line 44
    :cond_1
    sget-object p0, Lcom/oneplus/custom/utils/OpCustomizeSettings$SW_TYPE;->IN:Lcom/oneplus/custom/utils/OpCustomizeSettings$SW_TYPE;

    goto :goto_0

    .line 41
    :cond_2
    sget-object p0, Lcom/oneplus/custom/utils/OpCustomizeSettings$SW_TYPE;->H2:Lcom/oneplus/custom/utils/OpCustomizeSettings$SW_TYPE;

    goto :goto_0

    .line 38
    :cond_3
    sget-object p0, Lcom/oneplus/custom/utils/OpCustomizeSettings$SW_TYPE;->O2:Lcom/oneplus/custom/utils/OpCustomizeSettings$SW_TYPE;

    goto :goto_0

    .line 35
    :cond_4
    sget-object p0, Lcom/oneplus/custom/utils/OpCustomizeSettings$SW_TYPE;->DEFAULT:Lcom/oneplus/custom/utils/OpCustomizeSettings$SW_TYPE;

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
