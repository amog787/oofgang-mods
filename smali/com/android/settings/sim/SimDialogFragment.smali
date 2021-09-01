.class public abstract Lcom/android/settings/sim/SimDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "SimDialogFragment.java"

# interfaces
.implements Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;


# instance fields
.field private mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method protected static initArguments(II)Landroid/os/Bundle;
    .locals 2

    .line 39
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "dialog_type"

    .line 40
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "title_id"

    .line 41
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public getDialogType()I
    .locals 1

    .line 46
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "dialog_type"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getTitleResId()I
    .locals 1

    .line 50
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "title_id"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public onAirplaneModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 55
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onAttach(Landroid/content/Context;)V

    .line 56
    new-instance v0, Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/network/SubscriptionsChangeListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;)V

    iput-object v0, p0, Lcom/android/settings/sim/SimDialogFragment;->mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 73
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 74
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/sim/SimDialogActivity;

    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    invoke-virtual {p1, p0}, Lcom/android/settings/sim/SimDialogActivity;->onFragmentDismissed(Lcom/android/settings/sim/SimDialogFragment;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 61
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onPause()V

    .line 62
    iget-object p0, p0, Lcom/android/settings/sim/SimDialogFragment;->mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-virtual {p0}, Lcom/android/settings/network/SubscriptionsChangeListener;->stop()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 67
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onResume()V

    .line 68
    iget-object p0, p0, Lcom/android/settings/sim/SimDialogFragment;->mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-virtual {p0}, Lcom/android/settings/network/SubscriptionsChangeListener;->start()V

    return-void
.end method

.method public onSubscriptionsChanged()V
    .locals 0

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/sim/SimDialogFragment;->updateDialog()V

    return-void
.end method

.method public abstract updateDialog()V
.end method
