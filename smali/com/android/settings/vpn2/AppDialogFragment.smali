.class public Lcom/android/settings/vpn2/AppDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "AppDialogFragment.java"

# interfaces
.implements Lcom/android/settings/vpn2/AppDialog$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/vpn2/AppDialogFragment$Listener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/settings/vpn2/AppDialogFragment$Listener;

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private final mService:Landroid/net/IConnectivityManager;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    const-string v0, "connectivity"

    .line 57
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 56
    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/AppDialogFragment;->mService:Landroid/net/IConnectivityManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/vpn2/AppDialogFragment;Landroid/content/DialogInterface;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/android/settings/vpn2/AppDialogFragment;->onDisconnect(Landroid/content/DialogInterface;)V

    return-void
.end method

.method private getUserId()I
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/android/settings/vpn2/AppDialogFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    return p0
.end method

.method private isUiRestricted()Z
    .locals 2

    .line 180
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppDialogFragment;->getUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 181
    iget-object p0, p0, Lcom/android/settings/vpn2/AppDialogFragment;->mUserManager:Landroid/os/UserManager;

    const-string v1, "no_config_vpn"

    invoke-virtual {p0, v1, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method private onDisconnect(Landroid/content/DialogInterface;)V
    .locals 3

    .line 163
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppDialogFragment;->isUiRestricted()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 166
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppDialogFragment;->getUserId()I

    move-result p1

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/vpn2/AppDialogFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/vpn2/AppDialogFragment;->mService:Landroid/net/IConnectivityManager;

    invoke-static {v1, p1}, Lcom/android/settings/vpn2/VpnUtils;->getConnectedPackage(Landroid/net/IConnectivityManager;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/android/settings/vpn2/AppDialogFragment;->mService:Landroid/net/IConnectivityManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1, v2}, Landroid/net/IConnectivityManager;->setAlwaysOnVpnPackage(ILjava/lang/String;ZLjava/util/List;)Z

    .line 171
    iget-object v0, p0, Lcom/android/settings/vpn2/AppDialogFragment;->mService:Landroid/net/IConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/vpn2/AppDialogFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v2, "[Legacy VPN]"

    invoke-interface {v0, v1, v2, p1}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to disconnect package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/vpn2/AppDialogFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " for user "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppDialogFragment"

    invoke-static {p1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static show(Landroidx/fragment/app/Fragment;Landroid/content/pm/PackageInfo;Ljava/lang/String;ZZ)V
    .locals 6

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 75
    invoke-static/range {v0 .. v5}, Lcom/android/settings/vpn2/AppDialogFragment;->show(Landroidx/fragment/app/Fragment;Lcom/android/settings/vpn2/AppDialogFragment$Listener;Landroid/content/pm/PackageInfo;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static show(Landroidx/fragment/app/Fragment;Lcom/android/settings/vpn2/AppDialogFragment$Listener;Landroid/content/pm/PackageInfo;Ljava/lang/String;ZZ)V
    .locals 2

    .line 80
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 84
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "package"

    .line 85
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p2, "label"

    .line 86
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "managing"

    .line 87
    invoke-virtual {v0, p2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "connected"

    .line 88
    invoke-virtual {v0, p2, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 90
    new-instance p2, Lcom/android/settings/vpn2/AppDialogFragment;

    invoke-direct {p2}, Lcom/android/settings/vpn2/AppDialogFragment;-><init>()V

    .line 91
    iput-object p1, p2, Lcom/android/settings/vpn2/AppDialogFragment;->mListener:Lcom/android/settings/vpn2/AppDialogFragment$Listener;

    .line 92
    invoke-virtual {p2, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 93
    invoke-virtual {p2, p0, p1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string/jumbo p1, "vpnappdialog"

    invoke-virtual {p2, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x222

    return p0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 135
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 136
    iget-object v0, p0, Lcom/android/settings/vpn2/AppDialogFragment;->mListener:Lcom/android/settings/vpn2/AppDialogFragment$Listener;

    if-eqz v0, :cond_0

    .line 137
    invoke-interface {v0}, Lcom/android/settings/vpn2/AppDialogFragment$Listener;->onCancel()V

    .line 139
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 99
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 100
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/vpn2/AppDialogFragment;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 105
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "label"

    .line 106
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "managing"

    .line 107
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "connected"

    .line 108
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "package"

    .line 109
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageInfo;

    iput-object p1, p0, Lcom/android/settings/vpn2/AppDialogFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_0

    .line 112
    new-instance p1, Lcom/android/settings/vpn2/AppDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/vpn2/AppDialogFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-direct {p1, v1, p0, v2, v0}, Lcom/android/settings/vpn2/AppDialog;-><init>(Landroid/content/Context;Lcom/android/settings/vpn2/AppDialog$Listener;Landroid/content/pm/PackageInfo;Ljava/lang/String;)V

    return-object p1

    .line 115
    :cond_0
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 116
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 117
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->vpn_disconnect_confirm:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 118
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->vpn_cancel:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    if-eqz v2, :cond_1

    .line 120
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppDialogFragment;->isUiRestricted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->vpn_disconnect:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/settings/vpn2/AppDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/vpn2/AppDialogFragment$1;-><init>(Lcom/android/settings/vpn2/AppDialogFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 129
    :cond_1
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public onForget(Landroid/content/DialogInterface;)V
    .locals 4

    .line 144
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppDialogFragment;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 147
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppDialogFragment;->getUserId()I

    move-result v0

    .line 149
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/vpn2/AppDialogFragment;->mService:Landroid/net/IConnectivityManager;

    iget-object v2, p0, Lcom/android/settings/vpn2/AppDialogFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-interface {v1, v2, v0, v3}, Landroid/net/IConnectivityManager;->setVpnPackageAuthorization(Ljava/lang/String;II)V

    .line 151
    invoke-direct {p0, p1}, Lcom/android/settings/vpn2/AppDialogFragment;->onDisconnect(Landroid/content/DialogInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to forget authorization of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/vpn2/AppDialogFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppDialogFragment"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    :goto_0
    iget-object p0, p0, Lcom/android/settings/vpn2/AppDialogFragment;->mListener:Lcom/android/settings/vpn2/AppDialogFragment$Listener;

    if-eqz p0, :cond_1

    .line 158
    invoke-interface {p0}, Lcom/android/settings/vpn2/AppDialogFragment$Listener;->onForget()V

    :cond_1
    return-void
.end method
