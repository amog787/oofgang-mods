.class Lcom/google/android/material/checkbox/CheckableFlipDrawable$FrontDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CheckableFlipDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/checkbox/CheckableFlipDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FrontDrawable"
.end annotation


# instance fields
.field private mDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 151
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 152
    iput-object p1, p0, Lcom/google/android/material/checkbox/CheckableFlipDrawable$FrontDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 153
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method

.method private assignDrawableBounds(Landroid/graphics/Rect;)V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/google/android/material/checkbox/CheckableFlipDrawable$FrontDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 191
    iget-object v1, p0, Lcom/google/android/material/checkbox/CheckableFlipDrawable$FrontDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-lez v0, :cond_0

    if-lez v1, :cond_0

    .line 193
    iget-object p0, p0, Lcom/google/android/material/checkbox/CheckableFlipDrawable$FrontDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 195
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/checkbox/CheckableFlipDrawable$FrontDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 201
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 202
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/checkbox/CheckableFlipDrawable$FrontDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 207
    iget-object v2, p0, Lcom/google/android/material/checkbox/CheckableFlipDrawable$FrontDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-lez v1, :cond_2

    if-gtz v2, :cond_1

    goto :goto_0

    .line 212
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    int-to-float v1, v1

    div-float/2addr v3, v1

    .line 213
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 214
    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 215
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 216
    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 217
    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 218
    iget-object p0, p0, Lcom/google/android/material/checkbox/CheckableFlipDrawable$FrontDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 219
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 210
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/google/android/material/checkbox/CheckableFlipDrawable$FrontDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public getOpacity()I
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/google/android/material/checkbox/CheckableFlipDrawable$FrontDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result p0

    return p0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 240
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 185
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 186
    invoke-direct {p0, p1}, Lcom/google/android/material/checkbox/CheckableFlipDrawable$FrontDrawable;->assignDrawableBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    .line 245
    invoke-virtual {p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/google/android/material/checkbox/CheckableFlipDrawable$FrontDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 230
    iget-object p0, p0, Lcom/google/android/material/checkbox/CheckableFlipDrawable$FrontDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setInnerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/google/android/material/checkbox/CheckableFlipDrawable$FrontDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 162
    iput-object p1, p0, Lcom/google/android/material/checkbox/CheckableFlipDrawable$FrontDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 163
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 164
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/material/checkbox/CheckableFlipDrawable$FrontDrawable;->assignDrawableBounds(Landroid/graphics/Rect;)V

    .line 165
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setState([I)Z
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/google/android/material/checkbox/CheckableFlipDrawable$FrontDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p0

    return p0
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/google/android/material/checkbox/CheckableFlipDrawable$FrontDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/google/android/material/checkbox/CheckableFlipDrawable$FrontDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .line 250
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
