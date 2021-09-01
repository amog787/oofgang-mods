.class Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter$1;
.super Ljava/lang/Object;
.source "UserDictionarySettings.java"

# interfaces
.implements Landroid/widget/SimpleCursorAdapter$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter;)V
    .locals 0

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z
    .locals 1

    const/4 p0, 0x0

    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    .line 276
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 277
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/16 p0, 0x8

    .line 278
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 280
    :cond_0
    move-object p3, p1

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 283
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    const/4 p0, 0x1

    :cond_1
    return p0
.end method
