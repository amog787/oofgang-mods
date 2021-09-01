.class Lcom/android/settings/MasterClear$2;
.super Ljava/lang/Object;
.source "MasterClear.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MasterClear;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MasterClear;


# direct methods
.method constructor <init>(Lcom/android/settings/MasterClear;)V
    .locals 0

    .line 671
    iput-object p1, p0, Lcom/android/settings/MasterClear$2;->this$0:Lcom/android/settings/MasterClear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    .line 675
    iget-object p1, p0, Lcom/android/settings/MasterClear$2;->this$0:Lcom/android/settings/MasterClear;

    const/16 p2, 0x37

    invoke-static {p1, p2}, Lcom/android/settings/MasterClear;->access$000(Lcom/android/settings/MasterClear;I)Z

    move-result p1

    if-nez p1, :cond_3

    .line 677
    invoke-static {}, Lcom/oneplus/settings/utils/ProductUtils;->isUsvMode()Z

    move-result p1

    const-string p2, ""

    if-eqz p1, :cond_1

    .line 678
    iget-object p1, p0, Lcom/android/settings/MasterClear$2;->this$0:Lcom/android/settings/MasterClear;

    invoke-static {p1}, Lcom/android/settings/MasterClear;->access$200(Lcom/android/settings/MasterClear;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 679
    iget-object p0, p0, Lcom/android/settings/MasterClear$2;->this$0:Lcom/android/settings/MasterClear;

    invoke-static {p0}, Lcom/android/settings/MasterClear;->access$300(Lcom/android/settings/MasterClear;)V

    goto :goto_0

    .line 681
    :cond_0
    iget-object p0, p0, Lcom/android/settings/MasterClear$2;->this$0:Lcom/android/settings/MasterClear;

    invoke-static {p0, p2}, Lcom/android/settings/MasterClear;->access$100(Lcom/android/settings/MasterClear;Ljava/lang/String;)V

    goto :goto_0

    .line 684
    :cond_1
    iget-object p0, p0, Lcom/android/settings/MasterClear$2;->this$0:Lcom/android/settings/MasterClear;

    invoke-static {p0, p2}, Lcom/android/settings/MasterClear;->access$100(Lcom/android/settings/MasterClear;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 p1, -0x2

    if-ne p2, p1, :cond_3

    .line 689
    iget-object p0, p0, Lcom/android/settings/MasterClear$2;->this$0:Lcom/android/settings/MasterClear;

    invoke-static {p0}, Lcom/android/settings/MasterClear;->access$400(Lcom/android/settings/MasterClear;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_3
    :goto_0
    return-void
.end method
