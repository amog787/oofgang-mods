.class public Lcom/android/settings/users/MultiUserSwitchBarController;
.super Ljava/lang/Object;
.source "MultiUserSwitchBarController.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/users/MultiUserSwitchBarController$OnMultiUserSwitchChangedListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mListener:Lcom/android/settings/users/MultiUserSwitchBarController$OnMultiUserSwitchChangedListener;

.field final mSwitchBar:Lcom/android/settings/widget/SwitchWidgetController;

.field private final mUserCapabilities:Lcom/android/settings/users/UserCapabilities;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settings/users/MultiUserSwitchBarController$OnMultiUserSwitchChangedListener;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchWidgetController;

    .line 52
    iput-object p3, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->mListener:Lcom/android/settings/users/MultiUserSwitchBarController$OnMultiUserSwitchChangedListener;

    .line 53
    invoke-static {p1}, Lcom/android/settings/users/UserCapabilities;->create(Landroid/content/Context;)Lcom/android/settings/users/UserCapabilities;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->mUserCapabilities:Lcom/android/settings/users/UserCapabilities;

    .line 54
    iget-object p2, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchWidgetController;

    iget-boolean p1, p1, Lcom/android/settings/users/UserCapabilities;->mUserSwitcherEnabled:Z

    invoke-virtual {p2, p1}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    .line 56
    iget-object p1, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->mUserCapabilities:Lcom/android/settings/users/UserCapabilities;

    iget-boolean p2, p1, Lcom/android/settings/users/UserCapabilities;->mDisallowSwitchUser:Z

    if-eqz p2, :cond_0

    .line 57
    iget-object p1, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchWidgetController;

    iget-object p2, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->mContext:Landroid/content/Context;

    .line 59
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p3

    const-string v0, "no_user_switch"

    .line 58
    invoke-static {p2, v0, p3}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p2

    .line 57
    invoke-virtual {p1, p2}, Lcom/android/settings/widget/SwitchWidgetController;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_1

    .line 61
    :cond_0
    iget-object p3, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchWidgetController;

    if-nez p2, :cond_1

    iget-boolean p2, p1, Lcom/android/settings/users/UserCapabilities;->mIsGuest:Z

    if-nez p2, :cond_1

    .line 62
    invoke-virtual {p1}, Lcom/android/settings/users/UserCapabilities;->isAdmin()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 61
    :goto_0
    invoke-virtual {p3, p1}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    .line 64
    :goto_1
    iget-object p1, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SwitchWidgetController;->setListener(Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;)V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchWidgetController;->startListening()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchWidgetController;->stopListening()V

    return-void
.end method

.method public onSwitchToggled(Z)Z
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Toggling multi-user feature enabled state to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiUserSwitchBarCtrl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_switcher_enabled"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object p0, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->mListener:Lcom/android/settings/users/MultiUserSwitchBarController$OnMultiUserSwitchChangedListener;

    if-eqz p0, :cond_0

    .line 83
    invoke-interface {p0, p1}, Lcom/android/settings/users/MultiUserSwitchBarController$OnMultiUserSwitchChangedListener;->onMultiUserSwitchChanged(Z)V

    :cond_0
    return v0
.end method
