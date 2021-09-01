.class Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$1;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source "SpringRelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
        "Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;)F
    .locals 0

    .line 53
    invoke-static {p1}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->access$000(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;)F

    move-result p0

    return p0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    .line 49
    check-cast p1, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$1;->getValue(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;)F

    move-result p0

    return p0
.end method

.method public setValue(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;F)V
    .locals 0

    .line 58
    invoke-virtual {p1, p2}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->setDampedScrollShift(F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 49
    check-cast p1, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$1;->setValue(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;F)V

    return-void
.end method
