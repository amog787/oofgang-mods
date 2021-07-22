.class public final synthetic Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceHalfCardRendererHelper$V_jZBwGk2DWzvI4fUKBBBpt89zM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper;

.field public final synthetic f$1:Landroidx/slice/core/SliceAction;

.field public final synthetic f$2:Lcom/android/settings/homepage/contextualcards/ContextualCard;

.field public final synthetic f$3:Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper$HalfCardViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper;Landroidx/slice/core/SliceAction;Lcom/android/settings/homepage/contextualcards/ContextualCard;Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper$HalfCardViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceHalfCardRendererHelper$V_jZBwGk2DWzvI4fUKBBBpt89zM;->f$0:Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper;

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceHalfCardRendererHelper$V_jZBwGk2DWzvI4fUKBBBpt89zM;->f$1:Landroidx/slice/core/SliceAction;

    iput-object p3, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceHalfCardRendererHelper$V_jZBwGk2DWzvI4fUKBBBpt89zM;->f$2:Lcom/android/settings/homepage/contextualcards/ContextualCard;

    iput-object p4, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceHalfCardRendererHelper$V_jZBwGk2DWzvI4fUKBBBpt89zM;->f$3:Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper$HalfCardViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceHalfCardRendererHelper$V_jZBwGk2DWzvI4fUKBBBpt89zM;->f$0:Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceHalfCardRendererHelper$V_jZBwGk2DWzvI4fUKBBBpt89zM;->f$1:Landroidx/slice/core/SliceAction;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceHalfCardRendererHelper$V_jZBwGk2DWzvI4fUKBBBpt89zM;->f$2:Lcom/android/settings/homepage/contextualcards/ContextualCard;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceHalfCardRendererHelper$V_jZBwGk2DWzvI4fUKBBBpt89zM;->f$3:Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper$HalfCardViewHolder;

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper;->lambda$bindView$0$SliceHalfCardRendererHelper(Landroidx/slice/core/SliceAction;Lcom/android/settings/homepage/contextualcards/ContextualCard;Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper$HalfCardViewHolder;Landroid/view/View;)V

    return-void
.end method
