.class public Lcom/android/settings/applications/AppStateWriteSettingsBridge;
.super Lcom/android/settings/applications/AppStateAppOpsBridge;
.source "AppStateWriteSettingsBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;
    }
.end annotation


# static fields
.field public static final FILTER_WRITE_SETTINGS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field private static final PM_PERMISSIONS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "android.permission.WRITE_SETTINGS"

    .line 37
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/AppStateWriteSettingsBridge;->PM_PERMISSIONS:[Ljava/lang/String;

    .line 76
    new-instance v0, Lcom/android/settings/applications/AppStateWriteSettingsBridge$1;

    invoke-direct {v0}, Lcom/android/settings/applications/AppStateWriteSettingsBridge$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppStateWriteSettingsBridge;->FILTER_WRITE_SETTINGS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V
    .locals 6

    .line 43
    sget-object v5, Lcom/android/settings/applications/AppStateWriteSettingsBridge;->PM_PERMISSIONS:[Ljava/lang/String;

    const/16 v4, 0x17

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/AppStateAppOpsBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;I[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getWriteSettingsInfo(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;
    .locals 0

    .line 52
    invoke-super {p0, p1, p2}, Lcom/android/settings/applications/AppStateAppOpsBridge;->getPermissionInfo(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    move-result-object p0

    .line 53
    new-instance p1, Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    invoke-direct {p1, p0}, Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;-><init>(Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;)V

    return-object p1
.end method

.method protected updateExtraInfo(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V
    .locals 0

    .line 48
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/applications/AppStateWriteSettingsBridge;->getWriteSettingsInfo(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    move-result-object p0

    iput-object p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    return-void
.end method
