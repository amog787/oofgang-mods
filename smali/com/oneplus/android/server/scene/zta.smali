.class public final synthetic Lcom/oneplus/android/server/scene/zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic zta:Lcom/oneplus/android/server/scene/ssp;


# direct methods
.method public synthetic constructor <init>(Lcom/oneplus/android/server/scene/ssp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/android/server/scene/zta;->zta:Lcom/oneplus/android/server/scene/ssp;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/zta;->zta:Lcom/oneplus/android/server/scene/ssp;

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/scene/ssp;->ssp(Landroid/view/View;)V

    return-void
.end method
