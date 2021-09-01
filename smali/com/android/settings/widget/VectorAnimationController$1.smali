.class Lcom/android/settings/widget/VectorAnimationController$1;
.super Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
.source "VectorAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/VectorAnimationController;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/VectorAnimationController;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/VectorAnimationController;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/android/settings/widget/VectorAnimationController$1;->this$0:Lcom/android/settings/widget/VectorAnimationController;

    invoke-direct {p0}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/settings/widget/VectorAnimationController$1;->this$0:Lcom/android/settings/widget/VectorAnimationController;

    invoke-static {p0}, Lcom/android/settings/widget/VectorAnimationController;->access$000(Lcom/android/settings/widget/VectorAnimationController;)Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->start()V

    return-void
.end method
