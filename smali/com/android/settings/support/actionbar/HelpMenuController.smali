.class public Lcom/android/settings/support/actionbar/HelpMenuController;
.super Ljava/lang/Object;
.source "HelpMenuController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreateOptionsMenu;


# instance fields
.field private final mHost:Landroidx/fragment/app/Fragment;


# direct methods
.method private constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/settings/support/actionbar/HelpMenuController;->mHost:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public static init(Lcom/android/settingslib/core/lifecycle/ObservableFragment;)V
    .locals 2

    .line 47
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Lcom/android/settings/support/actionbar/HelpMenuController;

    invoke-direct {v1, p0}, Lcom/android/settings/support/actionbar/HelpMenuController;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public static init(Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;)V
    .locals 2

    .line 43
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Lcom/android/settings/support/actionbar/HelpMenuController;

    invoke-direct {v1, p0}, Lcom/android/settings/support/actionbar/HelpMenuController;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 56
    iget-object p2, p0, Lcom/android/settings/support/actionbar/HelpMenuController;->mHost:Landroidx/fragment/app/Fragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v0, "help_uri_resource"

    .line 58
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    .line 60
    :cond_0
    iget-object p2, p0, Lcom/android/settings/support/actionbar/HelpMenuController;->mHost:Landroidx/fragment/app/Fragment;

    instance-of v0, p2, Lcom/android/settings/support/actionbar/HelpResourceProvider;

    if-eqz v0, :cond_1

    .line 61
    check-cast p2, Lcom/android/settings/support/actionbar/HelpResourceProvider;

    invoke-interface {p2}, Lcom/android/settings/support/actionbar/HelpResourceProvider;->getHelpResource()I

    move-result p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 66
    iget-object v0, p0, Lcom/android/settings/support/actionbar/HelpMenuController;->mHost:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 68
    :cond_2
    iget-object p2, p0, Lcom/android/settings/support/actionbar/HelpMenuController;->mHost:Landroidx/fragment/app/Fragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 70
    iget-object p0, p0, Lcom/android/settings/support/actionbar/HelpMenuController;->mHost:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p1, v0, p0}, Lcom/android/settingslib/HelpUtils;->prepareHelpMenuItem(Landroid/app/Activity;Landroid/view/Menu;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    return-void
.end method
