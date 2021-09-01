.class Lcom/android/settings/RemoteBugreportActivity$1;
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

    .line 57
    iput-object p1, p0, Lcom/android/settings/RemoteBugreportActivity$1;->this$0:Lcom/android/settings/RemoteBugreportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/settings/RemoteBugreportActivity$1;->this$0:Lcom/android/settings/RemoteBugreportActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
