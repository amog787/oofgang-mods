.class public Lcom/android/settings/wifi/calling/DisclaimerItemListAdapter$DisclaimerItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DisclaimerItemListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/calling/DisclaimerItemListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisclaimerItemViewHolder"
.end annotation


# static fields
.field static final ID_DISCLAIMER_ITEM_DESCRIPTION:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final ID_DISCLAIMER_ITEM_TITLE:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field public final descriptionView:Landroid/widget/TextView;

.field public final titleView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    sget v0, Lcom/android/settings/R$id;->disclaimer_title:I

    sput v0, Lcom/android/settings/wifi/calling/DisclaimerItemListAdapter$DisclaimerItemViewHolder;->ID_DISCLAIMER_ITEM_TITLE:I

    .line 67
    sget v0, Lcom/android/settings/R$id;->disclaimer_desc:I

    sput v0, Lcom/android/settings/wifi/calling/DisclaimerItemListAdapter$DisclaimerItemViewHolder;->ID_DISCLAIMER_ITEM_DESCRIPTION:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 73
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 74
    sget v0, Lcom/android/settings/wifi/calling/DisclaimerItemListAdapter$DisclaimerItemViewHolder;->ID_DISCLAIMER_ITEM_TITLE:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/calling/DisclaimerItemListAdapter$DisclaimerItemViewHolder;->titleView:Landroid/widget/TextView;

    .line 75
    sget v0, Lcom/android/settings/wifi/calling/DisclaimerItemListAdapter$DisclaimerItemViewHolder;->ID_DISCLAIMER_ITEM_DESCRIPTION:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/wifi/calling/DisclaimerItemListAdapter$DisclaimerItemViewHolder;->descriptionView:Landroid/widget/TextView;

    return-void
.end method
