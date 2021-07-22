.class final Lcom/google/android/material/edgeeffect/SpringScrollView2$1;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source "SpringScrollView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/edgeeffect/SpringScrollView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
        "Lcom/google/android/material/edgeeffect/SpringScrollView2;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/google/android/material/edgeeffect/SpringScrollView2;)F
    .locals 0

    .line 76
    invoke-static {p1}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->access$000(Lcom/google/android/material/edgeeffect/SpringScrollView2;)F

    move-result p0

    return p0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    .line 72
    check-cast p1, Lcom/google/android/material/edgeeffect/SpringScrollView2;

    invoke-virtual {p0, p1}, Lcom/google/android/material/edgeeffect/SpringScrollView2$1;->getValue(Lcom/google/android/material/edgeeffect/SpringScrollView2;)F

    move-result p0

    return p0
.end method

.method public setValue(Lcom/google/android/material/edgeeffect/SpringScrollView2;F)V
    .locals 0

    .line 81
    invoke-virtual {p1, p2}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->setDampedScrollShift(F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 72
    check-cast p1, Lcom/google/android/material/edgeeffect/SpringScrollView2;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/edgeeffect/SpringScrollView2$1;->setValue(Lcom/google/android/material/edgeeffect/SpringScrollView2;F)V

    return-void
.end method
