.class Lcom/android/settings/RemoteBugreportActivity$3;
.super Ljava/lang/Object;
.source "RemoteBugreportActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/RemoteBugreportActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RemoteBugreportActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/RemoteBugreportActivity;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/android/settings/RemoteBugreportActivity$3;->this$0:Lcom/android/settings/RemoteBugreportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 95
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.android.server.action.REMOTE_BUGREPORT_SHARING_ACCEPTED"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    iget-object p2, p0, Lcom/android/settings/RemoteBugreportActivity$3;->this$0:Lcom/android/settings/RemoteBugreportActivity;

    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {p2, p1, v0, v1}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 99
    iget-object p0, p0, Lcom/android/settings/RemoteBugreportActivity$3;->this$0:Lcom/android/settings/RemoteBugreportActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
