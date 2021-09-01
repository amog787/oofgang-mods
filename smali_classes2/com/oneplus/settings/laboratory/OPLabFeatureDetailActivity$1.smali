.class Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity$1;
.super Ljava/lang/Object;
.source "OPLabFeatureDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;
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

    .line 142
    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity$1;->this$0:Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string p1, "status"

    const-string v0, "dc_dimming"

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 146
    iget-object p2, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity$1;->this$0:Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;

    invoke-static {p2}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->access$000(Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;)Landroid/widget/Switch;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 147
    iget-object p2, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity$1;->this$0:Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object p0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity$1;->this$0:Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;

    .line 148
    invoke-static {p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->access$100(Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;)Ljava/lang/String;

    move-result-object p0

    .line 147
    invoke-static {p2, p0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p0, "1"

    .line 149
    invoke-static {v0, p1, p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, -0x2

    if-ne p2, v1, :cond_1

    .line 151
    iget-object p0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity$1;->this$0:Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;

    invoke-static {p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->access$000(Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;)Landroid/widget/Switch;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/widget/Switch;->setChecked(Z)V

    const-string p0, "0"

    .line 152
    invoke-static {v0, p1, p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
