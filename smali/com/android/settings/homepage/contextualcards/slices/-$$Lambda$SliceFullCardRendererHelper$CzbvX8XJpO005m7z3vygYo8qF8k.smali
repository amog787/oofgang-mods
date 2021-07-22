.class public final synthetic Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceFullCardRendererHelper$CzbvX8XJpO005m7z3vygYo8qF8k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/slice/widget/SliceView$OnSliceActionListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper;

.field public final synthetic f$1:Lcom/android/settings/homepage/contextualcards/ContextualCard;

.field public final synthetic f$2:Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper;Lcom/android/settings/homepage/contextualcards/ContextualCard;Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceFullCardRendererHelper$CzbvX8XJpO005m7z3vygYo8qF8k;->f$0:Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper;

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceFullCardRendererHelper$CzbvX8XJpO005m7z3vygYo8qF8k;->f$1:Lcom/android/settings/homepage/contextualcards/ContextualCard;

    iput-object p3, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceFullCardRendererHelper$CzbvX8XJpO005m7z3vygYo8qF8k;->f$2:Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;

    return-void
.end method


# virtual methods
.method public final onSliceAction(Landroidx/slice/widget/EventInfo;Landroidx/slice/SliceItem;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceFullCardRendererHelper$CzbvX8XJpO005m7z3vygYo8qF8k;->f$0:Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceFullCardRendererHelper$CzbvX8XJpO005m7z3vygYo8qF8k;->f$1:Lcom/android/settings/homepage/contextualcards/ContextualCard;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceFullCardRendererHelper$CzbvX8XJpO005m7z3vygYo8qF8k;->f$2:Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper;->lambda$bindView$0$SliceFullCardRendererHelper(Lcom/android/settings/homepage/contextualcards/ContextualCard;Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;Landroidx/slice/widget/EventInfo;Landroidx/slice/SliceItem;)V

    return-void
.end method
