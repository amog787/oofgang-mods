.class Lcom/android/settings/TrustedCredentialsSettings$2;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TrustedCredentialsSettings;->showTrustAllCaDialog(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TrustedCredentialsSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/TrustedCredentialsSettings;)V
    .locals 0

    .line 941
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$2;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 945
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$2;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "ARG_SHOW_NEW_FOR_USER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 946
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$2;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    const/16 p1, -0x2710

    invoke-static {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings;->access$3102(Lcom/android/settings/TrustedCredentialsSettings;I)I

    return-void
.end method
