.class Lcom/android/settings/development/OemUnlockPreferenceController$2$1;
.super Ljava/lang/Object;
.source "OemUnlockPreferenceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/development/OemUnlockPreferenceController$2;->uimRemoteSimlockGetSimlockStatusResponse(IIIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/development/OemUnlockPreferenceController$2;


# direct methods
.method constructor <init>(Lcom/android/settings/development/OemUnlockPreferenceController$2;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lcom/android/settings/development/OemUnlockPreferenceController$2$1;->this$1:Lcom/android/settings/development/OemUnlockPreferenceController$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 338
    iget-object p0, p0, Lcom/android/settings/development/OemUnlockPreferenceController$2$1;->this$1:Lcom/android/settings/development/OemUnlockPreferenceController$2;

    iget-object p0, p0, Lcom/android/settings/development/OemUnlockPreferenceController$2;->this$0:Lcom/android/settings/development/OemUnlockPreferenceController;

    invoke-static {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->access$300(Lcom/android/settings/development/OemUnlockPreferenceController;)Lcom/android/settingslib/RestrictedSwitchPreference;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/development/OemUnlockPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
