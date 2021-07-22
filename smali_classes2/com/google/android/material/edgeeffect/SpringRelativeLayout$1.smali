.class final Lcom/google/android/material/edgeeffect/SpringRelativeLayout$1;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source "SpringRelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/edgeeffect/SpringRelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
        "Lcom/google/android/material/edgeeffect/SpringRelativeLayout;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/google/android/material/edgeeffect/SpringRelativeLayout;)F
    .locals 0

    .line 63
    invoke-static {p1}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->access$000(Lcom/google/android/material/edgeeffect/SpringRelativeLayout;)F

    move-result p0

    return p0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    .line 59
    check-cast p1, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    invoke-virtual {p0, p1}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$1;->getValue(Lcom/google/android/material/edgeeffect/SpringRelativeLayout;)F

    move-result p0

    return p0
.end method

.method public setValue(Lcom/google/android/material/edgeeffect/SpringRelativeLayout;F)V
    .locals 0

    .line 68
    invoke-virtual {p1, p2}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->setDampedScrollShift(F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 59
    check-cast p1, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$1;->setValue(Lcom/google/android/material/edgeeffect/SpringRelativeLayout;F)V

    return-void
.end method
