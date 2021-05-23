.class Lcom/oneplus/android/server/scene/you$zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/android/server/scene/you;->dma(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic you:Lcom/oneplus/android/server/scene/you;

.field final synthetic zta:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/scene/you;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/scene/you$zta;->you:Lcom/oneplus/android/server/scene/you;

    iput-object p2, p0, Lcom/oneplus/android/server/scene/you$zta;->zta:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object p1, p0, Lcom/oneplus/android/server/scene/you$zta;->you:Lcom/oneplus/android/server/scene/you;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/you;->zta(Lcom/oneplus/android/server/scene/you;)Landroid/widget/CheckBox;

    move-result-object p1

    const/16 v0, 0x11a

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    new-array p1, v2, [I

    aput v0, p1, v1

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    const/4 v3, -0x2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/android/server/scene/you$zta;->you:Lcom/oneplus/android/server/scene/you;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/you;->zta(Lcom/oneplus/android/server/scene/you;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oneplus/android/server/scene/you$zta;->you:Lcom/oneplus/android/server/scene/you;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/you;->you(Lcom/oneplus/android/server/scene/you;)I

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "boost_mode_no_disturb_intro"

    goto :goto_0

    :cond_0
    const-string p1, "boost_mode_game_boost_intro"

    :goto_0
    iget-object v4, p0, Lcom/oneplus/android/server/scene/you$zta;->you:Lcom/oneplus/android/server/scene/you;

    invoke-static {v4}, Lcom/oneplus/android/server/scene/you;->sis(Lcom/oneplus/android/server/scene/you;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, p1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/oneplus/android/server/scene/you$zta;->you:Lcom/oneplus/android/server/scene/you;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/you;->zta(Lcom/oneplus/android/server/scene/you;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    invoke-static {}, Lcom/oneplus/android/server/scene/you;->tsu()Z

    move-result v4

    if-eq v4, p1, :cond_2

    iget-object v4, p0, Lcom/oneplus/android/server/scene/you$zta;->you:Lcom/oneplus/android/server/scene/you;

    invoke-static {v4}, Lcom/oneplus/android/server/scene/you;->sis(Lcom/oneplus/android/server/scene/you;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "game_mode_show_fnatic_intr"

    invoke-static {v4, v5, p1, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_2
    iget-object p1, p0, Lcom/oneplus/android/server/scene/you$zta;->you:Lcom/oneplus/android/server/scene/you;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/you;->rtg(Lcom/oneplus/android/server/scene/you;)Lcom/oneplus/android/server/scene/you$tsu;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oneplus/android/server/scene/you$zta;->you:Lcom/oneplus/android/server/scene/you;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/you;->rtg(Lcom/oneplus/android/server/scene/you;)Lcom/oneplus/android/server/scene/you$tsu;

    move-result-object p1

    invoke-interface {p1}, Lcom/oneplus/android/server/scene/you$tsu;->zta()V

    :cond_3
    iget-object p1, p0, Lcom/oneplus/android/server/scene/you$zta;->you:Lcom/oneplus/android/server/scene/you;

    invoke-virtual {p1}, Lcom/oneplus/android/server/scene/you;->gck()V

    :cond_4
    :goto_1
    new-array p1, v2, [I

    aput v0, p1, v1

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oneplus/android/server/scene/you$zta;->you:Lcom/oneplus/android/server/scene/you;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/you;->you(Lcom/oneplus/android/server/scene/you;)I

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/oneplus/android/server/scene/you$zta;->you:Lcom/oneplus/android/server/scene/you;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/you;->ssp(Lcom/oneplus/android/server/scene/you;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oneplus/android/server/scene/you$zta;->you:Lcom/oneplus/android/server/scene/you;

    iget-object v0, p0, Lcom/oneplus/android/server/scene/you$zta;->zta:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0, v2}, Lcom/oneplus/android/server/scene/you;->zgw(Landroid/view/ViewGroup;I)V

    iget-object p0, p0, Lcom/oneplus/android/server/scene/you$zta;->you:Lcom/oneplus/android/server/scene/you;

    invoke-static {p0}, Lcom/oneplus/android/server/scene/you;->cno(Lcom/oneplus/android/server/scene/you;)Landroid/widget/TextView;

    move-result-object p0

    const p1, 0x50f013b

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/oneplus/android/server/scene/you$zta;->you:Lcom/oneplus/android/server/scene/you;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/you;->rtg(Lcom/oneplus/android/server/scene/you;)Lcom/oneplus/android/server/scene/you$tsu;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/oneplus/android/server/scene/you$zta;->you:Lcom/oneplus/android/server/scene/you;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/you;->rtg(Lcom/oneplus/android/server/scene/you;)Lcom/oneplus/android/server/scene/you$tsu;

    move-result-object p1

    invoke-interface {p1}, Lcom/oneplus/android/server/scene/you$tsu;->zta()V

    :cond_6
    iget-object p0, p0, Lcom/oneplus/android/server/scene/you$zta;->you:Lcom/oneplus/android/server/scene/you;

    invoke-virtual {p0}, Lcom/oneplus/android/server/scene/you;->gck()V

    :goto_2
    return-void
.end method
