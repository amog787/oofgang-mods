.class Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$DisableChangerRunnable;
.super Ljava/lang/Object;
.source "AppButtonsPreferenceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisableChangerRunnable"
.end annotation


# instance fields
.field final mPackageName:Ljava/lang/String;

.field final mPm:Landroid/content/pm/PackageManager;

.field final mState:I

.field final synthetic this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;Landroid/content/pm/PackageManager;Ljava/lang/String;I)V
    .locals 0

    .line 916
    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$DisableChangerRunnable;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 917
    iput-object p2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$DisableChangerRunnable;->mPm:Landroid/content/pm/PackageManager;

    .line 918
    iput-object p3, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$DisableChangerRunnable;->mPackageName:Ljava/lang/String;

    .line 919
    iput p4, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$DisableChangerRunnable;->mState:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 924
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$DisableChangerRunnable;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$DisableChangerRunnable;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$DisableChangerRunnable;->mState:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 925
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$DisableChangerRunnable;->mPackageName:Ljava/lang/String;

    const-string v1, "com.oneplus.brickmode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 926
    iget v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$DisableChangerRunnable;->mState:I

    const/4 v1, 0x3

    const-string v2, "permission"

    const-string v4, "L9YJTAKVM7"

    if-ne v0, v1, :cond_0

    .line 927
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$DisableChangerRunnable;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$1900(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;Z)V

    const-string p0, "forbid"

    .line 928
    invoke-static {v4, v2, p0, p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 930
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$DisableChangerRunnable;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p0, v3}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$1900(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;Z)V

    const-string p0, "open"

    .line 931
    invoke-static {v4, v2, p0, p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
