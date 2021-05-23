.class Lcom/android/server/cgv/sis$tsu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/cgv/sis;->veq()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic you:Lcom/android/server/cgv/sis;

.field final synthetic zta:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/server/cgv/sis;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cgv/sis$tsu;->you:Lcom/android/server/cgv/sis;

    iput-object p2, p0, Lcom/android/server/cgv/sis$tsu;->zta:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/server/cgv/sis$tsu;->you:Lcom/android/server/cgv/sis;

    iget-object v0, p0, Lcom/android/server/cgv/sis$tsu;->zta:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/android/server/cgv/sis;->rtg(Lcom/android/server/cgv/sis;Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/server/cgv/sis$tsu;->zta:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
