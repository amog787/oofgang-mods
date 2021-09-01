.class public final synthetic Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceContextualCardRenderer$PtHwEUMG3wXXxQB6EFty6o79ShA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;

.field public final synthetic f$1:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceContextualCardRenderer$PtHwEUMG3wXXxQB6EFty6o79ShA;->f$0:Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceContextualCardRenderer$PtHwEUMG3wXXxQB6EFty6o79ShA;->f$1:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceContextualCardRenderer$PtHwEUMG3wXXxQB6EFty6o79ShA;->f$0:Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceContextualCardRenderer$PtHwEUMG3wXXxQB6EFty6o79ShA;->f$1:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->lambda$bindView$0$SliceContextualCardRenderer(Landroid/net/Uri;)V

    return-void
.end method
