.class final Lcom/google/android/material/edgeeffect/SpringRecyclerView$1;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source "SpringRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/edgeeffect/SpringRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
        "Lcom/google/android/material/edgeeffect/SpringRecyclerView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/google/android/material/edgeeffect/SpringRecyclerView;)F
    .locals 0

    .line 41
    invoke-static {p1}, Lcom/google/android/material/edgeeffect/SpringRecyclerView;->access$000(Lcom/google/android/material/edgeeffect/SpringRecyclerView;)F

    move-result p0

    return p0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    .line 37
    check-cast p1, Lcom/google/android/material/edgeeffect/SpringRecyclerView;

    invoke-virtual {p0, p1}, Lcom/google/android/material/edgeeffect/SpringRecyclerView$1;->getValue(Lcom/google/android/material/edgeeffect/SpringRecyclerView;)F

    move-result p0

    return p0
.end method

.method public setValue(Lcom/google/android/material/edgeeffect/SpringRecyclerView;F)V
    .locals 0

    .line 46
    invoke-virtual {p1, p2}, Lcom/google/android/material/edgeeffect/SpringRecyclerView;->setDampedScrollShift(F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 37
    check-cast p1, Lcom/google/android/material/edgeeffect/SpringRecyclerView;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/edgeeffect/SpringRecyclerView$1;->setValue(Lcom/google/android/material/edgeeffect/SpringRecyclerView;F)V

    return-void
.end method
