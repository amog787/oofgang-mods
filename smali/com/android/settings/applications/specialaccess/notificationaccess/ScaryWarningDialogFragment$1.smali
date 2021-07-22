.class Lcom/android/settings/applications/specialaccess/notificationaccess/ScaryWarningDialogFragment$1;
.super Ljava/lang/Object;
.source "ScaryWarningDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/specialaccess/notificationaccess/ScaryWarningDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$cn:Landroid/content/ComponentName;

.field final synthetic val$parent:Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/specialaccess/notificationaccess/ScaryWarningDialogFragment;Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;Landroid/content/ComponentName;)V
    .locals 0

    .line 67
    iput-object p2, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/ScaryWarningDialogFragment$1;->val$parent:Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;

    iput-object p3, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/ScaryWarningDialogFragment$1;->val$cn:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 70
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/ScaryWarningDialogFragment$1;->val$parent:Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;

    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/ScaryWarningDialogFragment$1;->val$cn:Landroid/content/ComponentName;

    invoke-virtual {p1, p0}, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->enable(Landroid/content/ComponentName;)V

    return-void
.end method
