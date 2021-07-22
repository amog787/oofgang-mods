.class public Lcom/oneplus/settings/OPMEMCSwitchBarController;
.super Ljava/lang/Object;
.source "OPMEMCSwitchBarController.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# instance fields
.field private mListener:Lcom/oneplus/settings/OnChangeScreen;

.field private final mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mValidListener:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/oneplus/settings/OnChangeScreen;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p2, p0, Lcom/oneplus/settings/OPMEMCSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 40
    invoke-virtual {p2}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    if-eqz p3, :cond_0

    .line 42
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 46
    :cond_0
    iput-object p4, p0, Lcom/oneplus/settings/OPMEMCSwitchBarController;->mListener:Lcom/oneplus/settings/OnChangeScreen;

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 1

    .line 51
    iget-boolean v0, p0, Lcom/oneplus/settings/OPMEMCSwitchBarController;->mValidListener:Z

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/oneplus/settings/OPMEMCSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/oneplus/settings/OPMEMCSwitchBarController;->mValidListener:Z

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/oneplus/settings/OPMEMCSwitchBarController;->mValidListener:Z

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/oneplus/settings/OPMEMCSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/oneplus/settings/OPMEMCSwitchBarController;->mValidListener:Z

    :cond_0
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/oneplus/settings/OPMEMCSwitchBarController;->mListener:Lcom/oneplus/settings/OnChangeScreen;

    invoke-interface {p0, p2}, Lcom/oneplus/settings/OnChangeScreen;->onChangeScreen(Z)V

    return-void
.end method
