.class Lcom/android/settings/LinkifyUtils$1;
.super Landroid/text/style/ClickableSpan;
.source "LinkifyUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/LinkifyUtils;->linkify(Landroid/widget/TextView;Ljava/lang/StringBuilder;Lcom/android/settings/LinkifyUtils$OnClickListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/android/settings/LinkifyUtils$OnClickListener;


# direct methods
.method constructor <init>(Lcom/android/settings/LinkifyUtils$OnClickListener;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/android/settings/LinkifyUtils$1;->val$listener:Lcom/android/settings/LinkifyUtils$OnClickListener;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/settings/LinkifyUtils$1;->val$listener:Lcom/android/settings/LinkifyUtils$OnClickListener;

    invoke-interface {p0}, Lcom/android/settings/LinkifyUtils$OnClickListener;->onClick()V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 0

    .line 76
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 p0, 0x1

    .line 77
    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
