.class Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$1;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source "SpringNestScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
        "Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;)F
    .locals 0

    .line 70
    invoke-static {p1}, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->access$000(Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;)F

    move-result p0

    return p0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    .line 66
    check-cast p1, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$1;->getValue(Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;)F

    move-result p0

    return p0
.end method

.method public setValue(Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;F)V
    .locals 0

    .line 75
    invoke-virtual {p1, p2}, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->setDampedScrollShift(F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 66
    check-cast p1, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$1;->setValue(Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;F)V

    return-void
.end method
