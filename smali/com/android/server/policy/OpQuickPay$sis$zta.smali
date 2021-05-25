.class Lcom/android/server/policy/OpQuickPay$sis$zta;
.super Landroid/widget/ArrayAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/OpQuickPay$sis;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic sis:Lcom/android/server/policy/OpQuickPay$sis;

.field final synthetic you:Ljava/util/ArrayList;

.field final synthetic zta:I


# direct methods
.method constructor <init>(Lcom/android/server/policy/OpQuickPay$sis;Landroid/content/Context;II[Ljava/lang/String;ILjava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/OpQuickPay$sis$zta;->sis:Lcom/android/server/policy/OpQuickPay$sis;

    iput p6, p0, Lcom/android/server/policy/OpQuickPay$sis$zta;->zta:I

    iput-object p7, p0, Lcom/android/server/policy/OpQuickPay$sis$zta;->you:Ljava/util/ArrayList;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iget p3, p0, Lcom/android/server/policy/OpQuickPay$sis$zta;->zta:I

    if-ne p1, p3, :cond_0

    const p3, 0x5080164

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckedTextView;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :cond_0
    const p3, 0x5080165

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckedTextView;

    iget-object p0, p0, Lcom/android/server/policy/OpQuickPay$sis$zta;->you:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/policy/OpQuickPay$tsu;

    iget-object p0, p0, Lcom/android/server/policy/OpQuickPay$tsu;->bio:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    invoke-virtual {p3, p0, p1, p1, p1}, Landroid/widget/CheckedTextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object p2
.end method
