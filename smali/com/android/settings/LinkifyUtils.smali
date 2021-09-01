.class public Lcom/android/settings/LinkifyUtils;
.super Ljava/lang/Object;
.source "LinkifyUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/LinkifyUtils$OnClickListener;
    }
.end annotation


# direct methods
.method public static linkify(Landroid/widget/TextView;Ljava/lang/StringBuilder;Lcom/android/settings/LinkifyUtils$OnClickListener;)Z
    .locals 4

    const-string v0, "LINK_BEGIN"

    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 54
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return v1

    :cond_0
    add-int/lit8 v3, v0, 0xa

    .line 57
    invoke-virtual {p1, v0, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string v3, "LINK_END"

    .line 58
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 60
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return v1

    :cond_1
    add-int/lit8 v1, v3, 0x8

    .line 63
    invoke-virtual {p1, v3, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 66
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 67
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Landroid/text/Spannable;

    .line 68
    new-instance p1, Lcom/android/settings/LinkifyUtils$1;

    invoke-direct {p1, p2}, Lcom/android/settings/LinkifyUtils$1;-><init>(Lcom/android/settings/LinkifyUtils$OnClickListener;)V

    const/16 p2, 0x21

    .line 80
    invoke-interface {p0, p1, v0, v3, p2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    const/4 p0, 0x1

    return p0
.end method
