.class final Lcom/android/settings/privacy/EnableContentCaptureWithServiceSettingsPreferenceController$ProfileSelectDialog;
.super Ljava/lang/Object;
.source "EnableContentCaptureWithServiceSettingsPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/privacy/EnableContentCaptureWithServiceSettingsPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProfileSelectDialog"
.end annotation


# direct methods
.method static synthetic lambda$show$0(Ljava/util/ArrayList;Landroidx/preference/Preference;Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 108
    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserHandle;

    .line 110
    invoke-virtual {p1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const p3, 0x8000

    .line 111
    invoke-virtual {p1, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 112
    invoke-virtual {p2, p1, p0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static show(Landroid/content/Context;Landroidx/preference/Preference;)V
    .locals 4

    .line 93
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 95
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 96
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 97
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 100
    invoke-virtual {p1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const v0, 0x8000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    .line 101
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1

    .line 103
    :cond_1
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 104
    invoke-static {v0, p0, v2}, Lcom/android/settings/dashboard/profileselector/UserAdapter;->createUserAdapter(Landroid/os/UserManager;Landroid/content/Context;Ljava/util/List;)Lcom/android/settings/dashboard/profileselector/UserAdapter;

    move-result-object v0

    .line 106
    sget v3, Lcom/android/settingslib/R$string;->choose_profile:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v3, Lcom/android/settings/privacy/-$$Lambda$EnableContentCaptureWithServiceSettingsPreferenceController$ProfileSelectDialog$OMo4n7mn0aHIsZvpNoi9lROMhsw;

    invoke-direct {v3, v2, p1, p0}, Lcom/android/settings/privacy/-$$Lambda$EnableContentCaptureWithServiceSettingsPreferenceController$ProfileSelectDialog$OMo4n7mn0aHIsZvpNoi9lROMhsw;-><init>(Ljava/util/ArrayList;Landroidx/preference/Preference;Landroid/content/Context;)V

    .line 107
    invoke-virtual {v1, v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 114
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :goto_1
    return-void
.end method
