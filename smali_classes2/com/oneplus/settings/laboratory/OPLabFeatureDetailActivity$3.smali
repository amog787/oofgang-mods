.class Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity$3;
.super Ljava/lang/Object;
.source "OPLabFeatureDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->confirmDCDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity$3;->this$0:Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 193
    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity$3;->this$0:Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;

    .line 194
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity$3;->this$0:Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;

    .line 195
    invoke-static {v0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->access$100(Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 193
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 196
    iget-object p0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity$3;->this$0:Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;

    invoke-static {p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->access$000(Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;)Landroid/widget/Switch;

    move-result-object p0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method
