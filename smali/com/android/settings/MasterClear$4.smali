.class Lcom/android/settings/MasterClear$4;
.super Ljava/lang/Object;
.source "MasterClear.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MasterClear;->vzwDemoModePasswordDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MasterClear;

.field final synthetic val$passwordEntryView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings/MasterClear;Landroid/view/View;)V
    .locals 0

    .line 736
    iput-object p1, p0, Lcom/android/settings/MasterClear$4;->this$0:Lcom/android/settings/MasterClear;

    iput-object p2, p0, Lcom/android/settings/MasterClear$4;->val$passwordEntryView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 739
    iget-object p1, p0, Lcom/android/settings/MasterClear$4;->val$passwordEntryView:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->password:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 740
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "#VerizonDemoUnit#"

    .line 742
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 743
    iget-object p0, p0, Lcom/android/settings/MasterClear$4;->this$0:Lcom/android/settings/MasterClear;

    const-string p1, ""

    invoke-static {p0, p1}, Lcom/android/settings/MasterClear;->access$100(Lcom/android/settings/MasterClear;Ljava/lang/String;)V

    goto :goto_0

    .line 745
    :cond_0
    iget-object p0, p0, Lcom/android/settings/MasterClear$4;->this$0:Lcom/android/settings/MasterClear;

    invoke-static {p0}, Lcom/android/settings/MasterClear;->access$300(Lcom/android/settings/MasterClear;)V

    :goto_0
    return-void
.end method
