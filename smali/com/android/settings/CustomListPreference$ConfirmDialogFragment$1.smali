.class Lcom/android/settings/CustomListPreference$ConfirmDialogFragment$1;
.super Ljava/lang/Object;
.source "CustomListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/CustomListPreference$ConfirmDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CustomListPreference$ConfirmDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/CustomListPreference$ConfirmDialogFragment;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/android/settings/CustomListPreference$ConfirmDialogFragment$1;->this$0:Lcom/android/settings/CustomListPreference$ConfirmDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 212
    iget-object p0, p0, Lcom/android/settings/CustomListPreference$ConfirmDialogFragment$1;->this$0:Lcom/android/settings/CustomListPreference$ConfirmDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 214
    check-cast p0, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;

    invoke-virtual {p0}, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;->onItemConfirmed()V

    :cond_0
    return-void
.end method
