.class public Lcom/oneplus/custom/utils/OpCustomizeSettings;
.super Ljava/lang/Object;
.source "OpCustomizeSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;,
        Lcom/oneplus/custom/utils/OpCustomizeSettings$SW_TYPE;
    }
.end annotation


# static fields
.field private static final PROJECT_NAME:Ljava/lang/String;

.field private static sOpCustomizeSettings:Lcom/oneplus/custom/utils/OpCustomizeSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ro.boot.project_name"

    .line 30
    invoke-static {v0}, Lcom/oneplus/compat/os/SystemPropertiesNative;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings;->PROJECT_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCustomType()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;
    .locals 1

    .line 424
    invoke-static {}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->getInstance()Lcom/oneplus/custom/utils/OpCustomizeSettings;

    move-result-object v0

    .line 425
    invoke-virtual {v0}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->getCustomization()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    move-result-object v0

    return-object v0
.end method

.method private static getInstance()Lcom/oneplus/custom/utils/OpCustomizeSettings;
    .locals 2

    .line 497
    sget-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings;->sOpCustomizeSettings:Lcom/oneplus/custom/utils/OpCustomizeSettings;

    if-nez v0, :cond_4

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PROJECT_NAME = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oneplus/custom/utils/OpCustomizeSettings;->PROJECT_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpCustomizeSettings"

    invoke-static {v1, v0}, Lcom/oneplus/custom/utils/MyLog;->verb(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    sget-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings;->PROJECT_NAME:Ljava/lang/String;

    const-string v1, "16859"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings;->PROJECT_NAME:Ljava/lang/String;

    const-string v1, "17801"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 501
    :cond_0
    sget-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings;->PROJECT_NAME:Ljava/lang/String;

    const-string v1, "15801"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings;->PROJECT_NAME:Ljava/lang/String;

    const-string v1, "15811"

    .line 502
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 505
    :cond_1
    new-instance v0, Lcom/oneplus/custom/utils/OpCustomizeSettingsG2;

    invoke-direct {v0}, Lcom/oneplus/custom/utils/OpCustomizeSettingsG2;-><init>()V

    sput-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings;->sOpCustomizeSettings:Lcom/oneplus/custom/utils/OpCustomizeSettings;

    goto :goto_2

    .line 503
    :cond_2
    :goto_0
    new-instance v0, Lcom/oneplus/custom/utils/OpCustomizeSettings;

    invoke-direct {v0}, Lcom/oneplus/custom/utils/OpCustomizeSettings;-><init>()V

    sput-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings;->sOpCustomizeSettings:Lcom/oneplus/custom/utils/OpCustomizeSettings;

    goto :goto_2

    .line 500
    :cond_3
    :goto_1
    new-instance v0, Lcom/oneplus/custom/utils/OpCustomizeSettingsG1;

    invoke-direct {v0}, Lcom/oneplus/custom/utils/OpCustomizeSettingsG1;-><init>()V

    sput-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings;->sOpCustomizeSettings:Lcom/oneplus/custom/utils/OpCustomizeSettings;

    .line 508
    :cond_4
    :goto_2
    sget-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings;->sOpCustomizeSettings:Lcom/oneplus/custom/utils/OpCustomizeSettings;

    return-object v0
.end method

.method public static getSwType()Lcom/oneplus/custom/utils/OpCustomizeSettings$SW_TYPE;
    .locals 1

    .line 406
    invoke-static {}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->getInstance()Lcom/oneplus/custom/utils/OpCustomizeSettings;

    move-result-object v0

    .line 407
    invoke-virtual {v0}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->getSoftwareType()Lcom/oneplus/custom/utils/OpCustomizeSettings$SW_TYPE;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected getCustomization()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;
    .locals 0

    .line 515
    sget-object p0, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->NONE:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    return-object p0
.end method

.method protected getSoftwareType()Lcom/oneplus/custom/utils/OpCustomizeSettings$SW_TYPE;
    .locals 0

    .line 512
    sget-object p0, Lcom/oneplus/custom/utils/OpCustomizeSettings$SW_TYPE;->DEFAULT:Lcom/oneplus/custom/utils/OpCustomizeSettings$SW_TYPE;

    return-object p0
.end method
