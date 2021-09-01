.class public Lcom/oneplus/settings/defaultapp/DefaultAppConstants;
.super Ljava/lang/Object;
.source "DefaultAppConstants.java"


# static fields
.field public static final DEFAULTAPP_VALUE_LIST_H2OS:[Ljava/lang/String;

.field public static final DEFAULTAPP_VALUE_LIST_KEY:[Ljava/lang/String;

.field public static final DEFAULTAPP_VALUE_LIST_O2OS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "op_default_app_camera"

    const-string v1, "op_default_app_gallery"

    const-string v2, "op_default_app_music"

    const-string v3, "op_default_app_email"

    .line 15
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/defaultapp/DefaultAppConstants;->DEFAULTAPP_VALUE_LIST_KEY:[Ljava/lang/String;

    const-string v0, "com.oneplus.camera"

    const-string v1, "com.oneplus.gallery"

    const-string v2, "com.netease.cloudmusic"

    const-string v3, "com.netease.mobimail.oneplus"

    .line 16
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/oneplus/settings/defaultapp/DefaultAppConstants;->DEFAULTAPP_VALUE_LIST_H2OS:[Ljava/lang/String;

    const-string v2, "net.oneplus.music"

    const-string v3, "com.google.android.gm"

    .line 17
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/defaultapp/DefaultAppConstants;->DEFAULTAPP_VALUE_LIST_O2OS:[Ljava/lang/String;

    return-void
.end method
