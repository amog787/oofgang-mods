.class public Landroidx/leanback/widget/GuidedActionsStylist;
.super Ljava/lang/Object;
.source "GuidedActionsStylist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;
    }
.end annotation


# static fields
.field static final sGuidedActionItemAlignFacet:Landroidx/leanback/widget/ItemAlignmentFacet;


# instance fields
.field private mActionsGridView:Landroidx/leanback/widget/VerticalGridView;

.field private mBackToCollapseActivatorView:Z

.field private mBackToCollapseSubActions:Z

.field private mButtonActions:Z

.field private mContentView:Landroid/view/View;

.field private mDescriptionMinLines:I

.field private mDisabledChevronAlpha:F

.field private mDisabledDescriptionAlpha:F

.field private mDisabledTextAlpha:F

.field private mDisplayHeight:I

.field private mEditListener:Landroidx/leanback/widget/GuidedActionAdapter$EditListener;

.field private mEnabledChevronAlpha:F

.field private mEnabledDescriptionAlpha:F

.field private mEnabledTextAlpha:F

.field mExpandTransition:Ljava/lang/Object;

.field mExpandedAction:Landroidx/leanback/widget/GuidedAction;

.field private mKeyLinePercent:F

.field mMainView:Landroid/view/ViewGroup;

.field private mSubActionsBackground:Landroid/view/View;

.field mSubActionsGridView:Landroidx/leanback/widget/VerticalGridView;

.field private mTitleMaxLines:I

.field private mTitleMinLines:I

.field private mVerticalPadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 161
    new-instance v0, Landroidx/leanback/widget/ItemAlignmentFacet;

    invoke-direct {v0}, Landroidx/leanback/widget/ItemAlignmentFacet;-><init>()V

    sput-object v0, Landroidx/leanback/widget/GuidedActionsStylist;->sGuidedActionItemAlignFacet:Landroidx/leanback/widget/ItemAlignmentFacet;

    .line 162
    new-instance v0, Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;

    invoke-direct {v0}, Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;-><init>()V

    .line 163
    sget v1, Landroidx/leanback/R$id;->guidedactions_item_title:I

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setItemAlignmentViewId(I)V

    const/4 v1, 0x1

    .line 164
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setAlignedToTextViewBaseline(Z)V

    const/4 v2, 0x0

    .line 165
    invoke-virtual {v0, v2}, Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setItemAlignmentOffset(I)V

    .line 166
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setItemAlignmentOffsetWithPadding(Z)V

    const/4 v3, 0x0

    .line 167
    invoke-virtual {v0, v3}, Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setItemAlignmentOffsetPercent(F)V

    .line 168
    sget-object v3, Landroidx/leanback/widget/GuidedActionsStylist;->sGuidedActionItemAlignFacet:Landroidx/leanback/widget/ItemAlignmentFacet;

    new-array v1, v1, [Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;

    aput-object v0, v1, v2

    invoke-virtual {v3, v1}, Landroidx/leanback/widget/ItemAlignmentFacet;->setAlignmentDefs([Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 422
    iput-object v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroidx/leanback/widget/GuidedAction;

    const/4 v0, 0x1

    .line 425
    iput-boolean v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mBackToCollapseSubActions:Z

    .line 426
    iput-boolean v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mBackToCollapseActivatorView:Z

    return-void
.end method

.method private getDescriptionMaxHeight(Landroid/widget/TextView;)I
    .locals 2

    .line 1547
    iget v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mDisplayHeight:I

    iget v1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mVerticalPadding:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget p0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mTitleMaxLines:I

    mul-int/lit8 p0, p0, 0x2

    invoke-virtual {p1}, Landroid/widget/TextView;->getLineHeight()I

    move-result p1

    mul-int/2addr p0, p1

    sub-int/2addr v0, p0

    return v0
.end method

.method private static getDimension(Landroid/content/Context;Landroid/util/TypedValue;I)I
    .locals 2

    .line 1519
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1520
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private static getFloat(Landroid/content/Context;Landroid/util/TypedValue;I)F
    .locals 1

    .line 1504
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p2, p1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1505
    invoke-virtual {p1}, Landroid/util/TypedValue;->getFloat()F

    move-result p0

    return p0
.end method

.method private static getFloatValue(Landroid/content/res/Resources;Landroid/util/TypedValue;I)F
    .locals 1

    const/4 v0, 0x1

    .line 1509
    invoke-virtual {p0, p2, p1, v0}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1510
    invoke-virtual {p1}, Landroid/util/TypedValue;->getFloat()F

    move-result p0

    return p0
.end method

.method private static getInteger(Landroid/content/Context;Landroid/util/TypedValue;I)I
    .locals 2

    .line 1514
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1515
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method private setIcon(Landroid/widget/ImageView;Landroidx/leanback/widget/GuidedAction;)Z
    .locals 1

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    .line 1526
    invoke-virtual {p2}, Landroidx/leanback/widget/Action;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1529
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 1530
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1531
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 1533
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    const/4 p0, 0x1

    :cond_2
    return p0
.end method

.method private static setMaxLines(Landroid/widget/TextView;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 785
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 787
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 788
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    :goto_0
    return-void
.end method

.method private setupNextImeOptions(Landroid/widget/EditText;)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x5

    .line 805
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setImeOptions(I)V

    :cond_0
    return-void
.end method

.method private updateChevronAndVisibility(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;)V
    .locals 4

    .line 1452
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->isSubAction()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1453
    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroidx/leanback/widget/GuidedAction;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1454
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1455
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1456
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mActivatorView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1457
    invoke-virtual {p1, v2}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->setActivated(Z)V

    goto :goto_0

    .line 1459
    :cond_0
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroidx/leanback/widget/GuidedAction;

    move-result-object v0

    iget-object v3, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroidx/leanback/widget/GuidedAction;

    if-ne v0, v3, :cond_2

    .line 1460
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1461
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroidx/leanback/widget/GuidedAction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/widget/GuidedAction;->hasSubActions()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1462
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedActionsStylist;->getKeyLine()I

    move-result v1

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 1463
    :cond_1
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mActivatorView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1464
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    const/4 v0, 0x1

    .line 1465
    invoke-virtual {p1, v0}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->setActivated(Z)V

    goto :goto_0

    .line 1468
    :cond_2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1469
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1472
    :cond_3
    :goto_0
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mChevronView:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 1473
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroidx/leanback/widget/GuidedAction;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroidx/leanback/widget/GuidedActionsStylist;->onBindChevronView(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;Landroidx/leanback/widget/GuidedAction;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public collapseAction(Z)V
    .locals 3

    .line 1237
    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedActionsStylist;->isInExpandTransition()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroidx/leanback/widget/GuidedAction;

    if-nez v0, :cond_0

    goto :goto_1

    .line 1240
    :cond_0
    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedActionsStylist;->isExpandTransitionSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v1

    .line 1242
    :goto_0
    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/GuidedActionAdapter;

    iget-object v2, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroidx/leanback/widget/GuidedAction;

    invoke-virtual {v0, v2}, Landroidx/leanback/widget/GuidedActionAdapter;->indexOf(Landroidx/leanback/widget/GuidedAction;)I

    move-result v0

    if-gez v0, :cond_2

    return-void

    .line 1246
    :cond_2
    iget-object v2, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroidx/leanback/widget/GuidedAction;

    invoke-virtual {v2}, Landroidx/leanback/widget/GuidedAction;->hasEditableActivatorView()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1248
    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;

    .line 1247
    invoke-virtual {p0, v0, v1, p1}, Landroidx/leanback/widget/GuidedActionsStylist;->setEditingMode(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;ZZ)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 1252
    invoke-virtual {p0, v0, p1}, Landroidx/leanback/widget/GuidedActionsStylist;->startExpanded(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public expandAction(Landroidx/leanback/widget/GuidedAction;Z)V
    .locals 3

    .line 1187
    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedActionsStylist;->isInExpandTransition()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroidx/leanback/widget/GuidedAction;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1191
    :cond_0
    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/GuidedActionAdapter;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/GuidedActionAdapter;->indexOf(Landroidx/leanback/widget/GuidedAction;)I

    move-result v0

    if-gez v0, :cond_1

    return-void

    .line 1195
    :cond_1
    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedActionsStylist;->isExpandTransitionSupported()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    move p2, v2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_3

    .line 1197
    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object p2

    new-instance v1, Landroidx/leanback/widget/GuidedActionsStylist$4;

    invoke-direct {v1, p0}, Landroidx/leanback/widget/GuidedActionsStylist$4;-><init>(Landroidx/leanback/widget/GuidedActionsStylist;)V

    invoke-virtual {p2, v0, v1}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(ILandroidx/leanback/widget/ViewHolderTask;)V

    .line 1210
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedAction;->hasSubActions()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1211
    invoke-virtual {p0, p1, v2}, Landroidx/leanback/widget/GuidedActionsStylist;->onUpdateSubActionsGridView(Landroidx/leanback/widget/GuidedAction;Z)V

    goto :goto_1

    .line 1214
    :cond_3
    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object p1

    new-instance p2, Landroidx/leanback/widget/GuidedActionsStylist$5;

    invoke-direct {p2, p0}, Landroidx/leanback/widget/GuidedActionsStylist$5;-><init>(Landroidx/leanback/widget/GuidedActionsStylist;)V

    invoke-virtual {p1, v0, p2}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(ILandroidx/leanback/widget/ViewHolderTask;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public getActionsGridView()Landroidx/leanback/widget/VerticalGridView;
    .locals 0

    .line 553
    iget-object p0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    return-object p0
.end method

.method public getItemViewType(Landroidx/leanback/widget/GuidedAction;)I
    .locals 0

    .line 587
    instance-of p0, p1, Landroidx/leanback/widget/GuidedDatePickerAction;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method getKeyLine()I
    .locals 1

    .line 1257
    iget v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mKeyLinePercent:F

    iget-object p0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr v0, p0

    const/high16 p0, 0x42c80000    # 100.0f

    div-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public getSubActionsGridView()Landroidx/leanback/widget/VerticalGridView;
    .locals 0

    .line 561
    iget-object p0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    return-object p0
.end method

.method public final isBackKeyToCollapseActivatorView()Z
    .locals 0

    .line 1177
    iget-boolean p0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mBackToCollapseActivatorView:Z

    return p0
.end method

.method public final isBackKeyToCollapseSubActions()Z
    .locals 0

    .line 1155
    iget-boolean p0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mBackToCollapseSubActions:Z

    return p0
.end method

.method public isExpandTransitionSupported()Z
    .locals 1

    .line 1120
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isExpanded()Z
    .locals 0

    .line 1377
    iget-object p0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroidx/leanback/widget/GuidedAction;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInExpandTransition()Z
    .locals 0

    .line 1110
    iget-object p0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mExpandTransition:Ljava/lang/Object;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAnimateItemChecked(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V
    .locals 0

    .line 943
    iget-object p0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mCheckmarkView:Landroid/widget/ImageView;

    instance-of p1, p0, Landroid/widget/Checkable;

    if-eqz p1, :cond_0

    .line 944
    check-cast p0, Landroid/widget/Checkable;

    invoke-interface {p0, p2}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public onAnimateItemFocused(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V
    .locals 0

    return-void
.end method

.method public onAnimateItemPressed(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V
    .locals 0

    .line 922
    invoke-virtual {p1, p2}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->press(Z)V

    return-void
.end method

.method public onAnimateItemPressedCancelled(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;)V
    .locals 0

    const/4 p0, 0x0

    .line 930
    invoke-virtual {p1, p0}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->press(Z)V

    return-void
.end method

.method public onBindActivatorView(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;Landroidx/leanback/widget/GuidedAction;)V
    .locals 4

    .line 991
    instance-of p0, p2, Landroidx/leanback/widget/GuidedDatePickerAction;

    if-eqz p0, :cond_2

    .line 992
    check-cast p2, Landroidx/leanback/widget/GuidedDatePickerAction;

    .line 993
    iget-object p0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mActivatorView:Landroid/view/View;

    check-cast p0, Landroidx/leanback/widget/picker/DatePicker;

    .line 994
    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedDatePickerAction;->getDatePickerFormat()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/picker/DatePicker;->setDatePickerFormat(Ljava/lang/String;)V

    .line 995
    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedDatePickerAction;->getMinDate()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 996
    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedDatePickerAction;->getMinDate()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/leanback/widget/picker/DatePicker;->setMinDate(J)V

    .line 998
    :cond_0
    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedDatePickerAction;->getMaxDate()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    .line 999
    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedDatePickerAction;->getMaxDate()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/leanback/widget/picker/DatePicker;->setMaxDate(J)V

    .line 1001
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 1002
    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedDatePickerAction;->getDate()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p2, 0x1

    .line 1003
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x5

    .line 1004
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/4 v1, 0x0

    .line 1003
    invoke-virtual {p0, p2, v0, p1, v1}, Landroidx/leanback/widget/picker/DatePicker;->setDate(IIIZ)V

    :cond_2
    return-void
.end method

.method public onBindCheckMarkView(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;Landroidx/leanback/widget/GuidedAction;)V
    .locals 5

    .line 964
    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedAction;->getCheckSetId()I

    move-result p0

    if-eqz p0, :cond_2

    .line 965
    iget-object p0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mCheckmarkView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 966
    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedAction;->getCheckSetId()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const p0, 0x101021a

    goto :goto_0

    :cond_0
    const p0, 0x1010219

    .line 969
    :goto_0
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mCheckmarkView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    .line 971
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 972
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, p0, v2, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 973
    iget p0, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v0, p0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 975
    :cond_1
    iget-object p0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mCheckmarkView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 976
    iget-object p0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mCheckmarkView:Landroid/widget/ImageView;

    instance-of p1, p0, Landroid/widget/Checkable;

    if-eqz p1, :cond_3

    .line 977
    check-cast p0, Landroid/widget/Checkable;

    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedAction;->isChecked()Z

    move-result p1

    invoke-interface {p0, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_1

    .line 980
    :cond_2
    iget-object p0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mCheckmarkView:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onBindChevronView(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;Landroidx/leanback/widget/GuidedAction;)V
    .locals 3

    .line 1072
    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedAction;->hasNext()Z

    move-result v0

    .line 1073
    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedAction;->hasSubActions()Z

    move-result v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1088
    :cond_0
    iget-object p0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mChevronView:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 1075
    :cond_1
    :goto_0
    iget-object v1, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mChevronView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1076
    iget-object v1, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mChevronView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedAction;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mEnabledChevronAlpha:F

    goto :goto_1

    .line 1077
    :cond_2
    iget v2, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mDisabledChevronAlpha:F

    .line 1076
    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    if-eqz v0, :cond_4

    .line 1080
    iget-object p0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result p0

    const/4 p2, 0x1

    if-ne p0, p2, :cond_3

    const/high16 p0, 0x43340000    # 180.0f

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    .line 1081
    :goto_2
    iget-object p1, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mChevronView:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_3

    .line 1082
    :cond_4
    iget-object p0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroidx/leanback/widget/GuidedAction;

    if-ne p2, p0, :cond_5

    .line 1083
    iget-object p0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mChevronView:Landroid/widget/ImageView;

    const/high16 p1, 0x43870000    # 270.0f

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_3

    .line 1085
    :cond_5
    iget-object p0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mChevronView:Landroid/widget/ImageView;

    const/high16 p1, 0x42b40000    # 90.0f

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setRotation(F)V

    :goto_3
    return-void
.end method

.method public onBindViewHolder(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;Landroidx/leanback/widget/GuidedAction;)V
    .locals 8

    .line 680
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput-object p2, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mAction:Landroidx/leanback/widget/GuidedAction;

    .line 681
    iget-object v1, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x1a

    const/16 v5, 0x1c

    const/4 v6, 0x0

    if-eqz v1, :cond_3

    .line 682
    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedAction;->getInputType()I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setInputType(I)V

    .line 683
    iget-object v1, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 684
    iget-object v1, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedAction;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mEnabledTextAlpha:F

    goto :goto_0

    :cond_0
    iget v7, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mDisabledTextAlpha:F

    :goto_0
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 685
    iget-object v1, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 686
    iget-object v1, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setClickable(Z)V

    .line 687
    iget-object v1, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setLongClickable(Z)V

    if-lt v0, v5, :cond_2

    .line 689
    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedAction;->isEditable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 690
    iget-object v1, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedAction;->getAutofillHints()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setAutofillHints([Ljava/lang/String;)V

    goto :goto_1

    .line 692
    :cond_1
    iget-object v1, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAutofillHints([Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-lt v0, v4, :cond_3

    .line 696
    iget-object v1, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setImportantForAutofill(I)V

    .line 699
    :cond_3
    :goto_1
    iget-object v1, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    if-eqz v1, :cond_8

    .line 700
    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedAction;->getDescriptionInputType()I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setInputType(I)V

    .line 701
    iget-object v1, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedAction;->getDescription()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 702
    iget-object v1, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedAction;->getDescription()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x8

    goto :goto_2

    :cond_4
    move v7, v6

    :goto_2
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 704
    iget-object v1, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedAction;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    iget v7, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mEnabledDescriptionAlpha:F

    goto :goto_3

    .line 705
    :cond_5
    iget v7, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mDisabledDescriptionAlpha:F

    .line 704
    :goto_3
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 706
    iget-object v1, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 707
    iget-object v1, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setClickable(Z)V

    .line 708
    iget-object v1, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setLongClickable(Z)V

    if-lt v0, v5, :cond_7

    .line 710
    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedAction;->isDescriptionEditable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 711
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedAction;->getAutofillHints()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAutofillHints([Ljava/lang/String;)V

    goto :goto_4

    .line 713
    :cond_6
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAutofillHints([Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    if-lt v0, v4, :cond_8

    .line 717
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setImportantForAutofill(I)V

    .line 721
    :cond_8
    :goto_4
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mCheckmarkView:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    .line 722
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/GuidedActionsStylist;->onBindCheckMarkView(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;Landroidx/leanback/widget/GuidedAction;)V

    .line 724
    :cond_9
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p2}, Landroidx/leanback/widget/GuidedActionsStylist;->setIcon(Landroid/widget/ImageView;Landroidx/leanback/widget/GuidedAction;)Z

    .line 726
    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedAction;->hasMultilineDescription()Z

    move-result v0

    const/high16 v1, 0x20000

    if-eqz v0, :cond_a

    .line 727
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    .line 728
    iget v2, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mTitleMaxLines:I

    invoke-static {v0, v2}, Landroidx/leanback/widget/GuidedActionsStylist;->setMaxLines(Landroid/widget/TextView;I)V

    .line 729
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    .line 730
    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    move-result v2

    or-int/2addr v2, v1

    .line 729
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 731
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    .line 732
    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    move-result v2

    or-int/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 734
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    iget-object v2, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Landroidx/leanback/widget/GuidedActionsStylist;->getDescriptionMaxHeight(Landroid/widget/TextView;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxHeight(I)V

    goto :goto_5

    .line 738
    :cond_a
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 739
    iget v2, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mTitleMinLines:I

    invoke-static {v0, v2}, Landroidx/leanback/widget/GuidedActionsStylist;->setMaxLines(Landroid/widget/TextView;I)V

    .line 741
    :cond_b
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    .line 742
    iget v2, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mDescriptionMinLines:I

    invoke-static {v0, v2}, Landroidx/leanback/widget/GuidedActionsStylist;->setMaxLines(Landroid/widget/TextView;I)V

    .line 745
    :cond_c
    :goto_5
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mActivatorView:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 746
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/GuidedActionsStylist;->onBindActivatorView(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;Landroidx/leanback/widget/GuidedAction;)V

    .line 748
    :cond_d
    invoke-virtual {p0, p1, v6, v6}, Landroidx/leanback/widget/GuidedActionsStylist;->setEditingMode(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;ZZ)V

    .line 749
    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedAction;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 750
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 751
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    goto :goto_6

    .line 753
    :cond_e
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 754
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const/high16 v1, 0x60000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 756
    :goto_6
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/GuidedActionsStylist;->setupImeOptions(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;Landroidx/leanback/widget/GuidedAction;)V

    .line 758
    invoke-direct {p0, p1}, Landroidx/leanback/widget/GuidedActionsStylist;->updateChevronAndVisibility(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 443
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Landroidx/leanback/R$styleable;->LeanbackGuidedStepTheme:[I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 445
    sget v1, Landroidx/leanback/R$styleable;->LeanbackGuidedStepTheme_guidedStepKeyline:I

    const/high16 v2, 0x42200000    # 40.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 447
    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedActionsStylist;->onProvideLayoutId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    .line 448
    iget-boolean p2, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mButtonActions:Z

    if-eqz p2, :cond_0

    sget p2, Landroidx/leanback/R$id;->guidedactions_content2:I

    goto :goto_0

    .line 449
    :cond_0
    sget p2, Landroidx/leanback/R$id;->guidedactions_content:I

    .line 448
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mContentView:Landroid/view/View;

    .line 450
    iget-object p1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    instance-of p2, p1, Landroidx/leanback/widget/VerticalGridView;

    if-eqz p2, :cond_1

    .line 451
    check-cast p1, Landroidx/leanback/widget/VerticalGridView;

    iput-object p1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    goto :goto_2

    .line 453
    :cond_1
    iget-boolean p2, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mButtonActions:Z

    if-eqz p2, :cond_2

    .line 454
    sget p2, Landroidx/leanback/R$id;->guidedactions_list2:I

    goto :goto_1

    :cond_2
    sget p2, Landroidx/leanback/R$id;->guidedactions_list:I

    .line 453
    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/VerticalGridView;

    iput-object p1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    if-eqz p1, :cond_5

    .line 458
    invoke-virtual {p1, v0}, Landroidx/leanback/widget/BaseGridView;->setWindowAlignmentOffsetPercent(F)V

    .line 459
    iget-object p1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {p1, v2}, Landroidx/leanback/widget/BaseGridView;->setWindowAlignment(I)V

    .line 460
    iget-boolean p1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mButtonActions:Z

    if-nez p1, :cond_3

    .line 461
    iget-object p1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    sget p2, Landroidx/leanback/R$id;->guidedactions_sub_list:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/VerticalGridView;

    iput-object p1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    .line 463
    iget-object p1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    sget p2, Landroidx/leanback/R$id;->guidedactions_sub_list_background:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mSubActionsBackground:Landroid/view/View;

    .line 467
    :cond_3
    :goto_2
    iget-object p1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 468
    iget-object p1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 471
    iget-object p1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 472
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 473
    sget v0, Landroidx/leanback/R$attr;->guidedActionEnabledChevronAlpha:I

    invoke-static {p1, p2, v0}, Landroidx/leanback/widget/GuidedActionsStylist;->getFloat(Landroid/content/Context;Landroid/util/TypedValue;I)F

    move-result v0

    iput v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mEnabledChevronAlpha:F

    .line 474
    sget v0, Landroidx/leanback/R$attr;->guidedActionDisabledChevronAlpha:I

    invoke-static {p1, p2, v0}, Landroidx/leanback/widget/GuidedActionsStylist;->getFloat(Landroid/content/Context;Landroid/util/TypedValue;I)F

    move-result v0

    iput v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mDisabledChevronAlpha:F

    .line 475
    sget v0, Landroidx/leanback/R$attr;->guidedActionTitleMinLines:I

    invoke-static {p1, p2, v0}, Landroidx/leanback/widget/GuidedActionsStylist;->getInteger(Landroid/content/Context;Landroid/util/TypedValue;I)I

    move-result v0

    iput v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mTitleMinLines:I

    .line 476
    sget v0, Landroidx/leanback/R$attr;->guidedActionTitleMaxLines:I

    invoke-static {p1, p2, v0}, Landroidx/leanback/widget/GuidedActionsStylist;->getInteger(Landroid/content/Context;Landroid/util/TypedValue;I)I

    move-result v0

    iput v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mTitleMaxLines:I

    .line 477
    sget v0, Landroidx/leanback/R$attr;->guidedActionDescriptionMinLines:I

    invoke-static {p1, p2, v0}, Landroidx/leanback/widget/GuidedActionsStylist;->getInteger(Landroid/content/Context;Landroid/util/TypedValue;I)I

    move-result v0

    iput v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mDescriptionMinLines:I

    .line 478
    sget v0, Landroidx/leanback/R$attr;->guidedActionVerticalPadding:I

    invoke-static {p1, p2, v0}, Landroidx/leanback/widget/GuidedActionsStylist;->getDimension(Landroid/content/Context;Landroid/util/TypedValue;I)I

    move-result v0

    iput v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mVerticalPadding:I

    const-string/jumbo v0, "window"

    .line 479
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 480
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mDisplayHeight:I

    .line 482
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/leanback/R$dimen;->lb_guidedactions_item_unselected_text_alpha:I

    invoke-static {v0, p2, v1}, Landroidx/leanback/widget/GuidedActionsStylist;->getFloatValue(Landroid/content/res/Resources;Landroid/util/TypedValue;I)F

    move-result v0

    iput v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mEnabledTextAlpha:F

    .line 484
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/leanback/R$dimen;->lb_guidedactions_item_disabled_text_alpha:I

    invoke-static {v0, p2, v1}, Landroidx/leanback/widget/GuidedActionsStylist;->getFloatValue(Landroid/content/res/Resources;Landroid/util/TypedValue;I)F

    move-result v0

    iput v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mDisabledTextAlpha:F

    .line 486
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/leanback/R$dimen;->lb_guidedactions_item_unselected_description_text_alpha:I

    invoke-static {v0, p2, v1}, Landroidx/leanback/widget/GuidedActionsStylist;->getFloatValue(Landroid/content/res/Resources;Landroid/util/TypedValue;I)F

    move-result v0

    iput v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mEnabledDescriptionAlpha:F

    .line 488
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/leanback/R$dimen;->lb_guidedactions_item_disabled_description_text_alpha:I

    invoke-static {v0, p2, v1}, Landroidx/leanback/widget/GuidedActionsStylist;->getFloatValue(Landroid/content/res/Resources;Landroid/util/TypedValue;I)F

    move-result p2

    iput p2, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mDisabledDescriptionAlpha:F

    .line 491
    invoke-static {p1}, Landroidx/leanback/widget/GuidanceStylingRelativeLayout;->getKeyLinePercent(Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mKeyLinePercent:F

    .line 492
    iget-object p1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mContentView:Landroid/view/View;

    instance-of p2, p1, Landroidx/leanback/widget/GuidedActionsRelativeLayout;

    if-eqz p2, :cond_4

    .line 493
    check-cast p1, Landroidx/leanback/widget/GuidedActionsRelativeLayout;

    new-instance p2, Landroidx/leanback/widget/GuidedActionsStylist$1;

    invoke-direct {p2, p0}, Landroidx/leanback/widget/GuidedActionsStylist$1;-><init>(Landroidx/leanback/widget/GuidedActionsStylist;)V

    invoke-virtual {p1, p2}, Landroidx/leanback/widget/GuidedActionsRelativeLayout;->setInterceptKeyEventListener(Landroidx/leanback/widget/GuidedActionsRelativeLayout$InterceptKeyEventListener;)V

    .line 513
    :cond_4
    iget-object p0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    return-object p0

    .line 456
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No ListView exists."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;
    .locals 3

    .line 649
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 650
    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedActionsStylist;->onProvideItemLayoutId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 651
    new-instance v1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;

    iget-object p0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    if-ne p1, p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-direct {v1, v0, v2}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;-><init>(Landroid/view/View;Z)V

    return-object v1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;
    .locals 2

    if-nez p2, :cond_0

    .line 666
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/GuidedActionsStylist;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;

    move-result-object p0

    return-object p0

    .line 668
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 669
    invoke-virtual {p0, p2}, Landroidx/leanback/widget/GuidedActionsStylist;->onProvideItemLayoutId(I)I

    move-result p2

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 670
    new-instance v0, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;

    iget-object p0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    if-ne p1, p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-direct {v0, p2, v1}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;-><init>(Landroid/view/View;Z)V

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    .line 539
    iput-object v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroidx/leanback/widget/GuidedAction;

    .line 540
    iput-object v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mExpandTransition:Ljava/lang/Object;

    .line 541
    iput-object v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    .line 542
    iput-object v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    .line 543
    iput-object v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mSubActionsBackground:Landroid/view/View;

    .line 544
    iput-object v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mContentView:Landroid/view/View;

    .line 545
    iput-object v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    return-void
.end method

.method onEditActivatorView(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;ZZ)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1038
    invoke-virtual {p0, p1, p3}, Landroidx/leanback/widget/GuidedActionsStylist;->startExpanded(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V

    .line 1039
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 1040
    iget-object p2, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mActivatorView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    .line 1041
    iget-object p2, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mActivatorView:Landroid/view/View;

    new-instance p3, Landroidx/leanback/widget/GuidedActionsStylist$3;

    invoke-direct {p3, p0, p1}, Landroidx/leanback/widget/GuidedActionsStylist$3;-><init>(Landroidx/leanback/widget/GuidedActionsStylist;Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1051
    :cond_0
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroidx/leanback/widget/GuidedAction;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/GuidedActionsStylist;->onUpdateActivatorView(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;Landroidx/leanback/widget/GuidedAction;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1052
    iget-object p2, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mEditListener:Landroidx/leanback/widget/GuidedActionAdapter$EditListener;

    if-eqz p2, :cond_1

    .line 1053
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroidx/leanback/widget/GuidedAction;

    move-result-object v1

    invoke-interface {p2, v1}, Landroidx/leanback/widget/GuidedActionAdapter$EditListener;->onGuidedActionEditedAndProceed(Landroidx/leanback/widget/GuidedAction;)J

    .line 1056
    :cond_1
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 1057
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    const/4 p2, 0x0

    .line 1058
    invoke-virtual {p0, p2, p3}, Landroidx/leanback/widget/GuidedActionsStylist;->startExpanded(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V

    .line 1059
    iget-object p0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mActivatorView:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1060
    iget-object p0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mActivatorView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    :goto_0
    return-void
.end method

.method protected onEditingModeChange(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;Landroidx/leanback/widget/GuidedAction;Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method protected onEditingModeChange(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;ZZ)V
    .locals 8

    .line 847
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroidx/leanback/widget/GuidedAction;

    move-result-object v0

    .line 848
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->getTitleView()Landroid/widget/TextView;

    move-result-object v1

    .line 849
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->getDescriptionView()Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz p2, :cond_6

    .line 851
    invoke-virtual {v0}, Landroidx/leanback/widget/GuidedAction;->getEditTitle()Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v1, :cond_0

    if-eqz v7, :cond_0

    .line 853
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 855
    :cond_0
    invoke-virtual {v0}, Landroidx/leanback/widget/GuidedAction;->getEditDescription()Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v2, :cond_1

    if-eqz v7, :cond_1

    .line 857
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 859
    :cond_1
    invoke-virtual {v0}, Landroidx/leanback/widget/GuidedAction;->isDescriptionEditable()Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v2, :cond_2

    .line 861
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 862
    invoke-virtual {v0}, Landroidx/leanback/widget/GuidedAction;->getDescriptionEditInputType()I

    move-result p3

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setInputType(I)V

    .line 863
    invoke-virtual {v2}, Landroid/widget/TextView;->requestFocusFromTouch()Z

    .line 865
    :cond_2
    iput v5, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mEditingMode:I

    goto/16 :goto_2

    .line 866
    :cond_3
    invoke-virtual {v0}, Landroidx/leanback/widget/GuidedAction;->isEditable()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v1, :cond_4

    .line 868
    invoke-virtual {v0}, Landroidx/leanback/widget/GuidedAction;->getEditInputType()I

    move-result p3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setInputType(I)V

    .line 869
    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocusFromTouch()Z

    .line 871
    :cond_4
    iput v4, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mEditingMode:I

    goto :goto_2

    .line 872
    :cond_5
    iget-object v1, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mActivatorView:Landroid/view/View;

    if-eqz v1, :cond_d

    .line 873
    invoke-virtual {p0, p1, p2, p3}, Landroidx/leanback/widget/GuidedActionsStylist;->onEditActivatorView(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;ZZ)V

    .line 874
    iput v3, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mEditingMode:I

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_7

    .line 878
    invoke-virtual {v0}, Landroidx/leanback/widget/GuidedAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    if-eqz v2, :cond_8

    .line 881
    invoke-virtual {v0}, Landroidx/leanback/widget/GuidedAction;->getDescription()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 883
    :cond_8
    iget v7, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mEditingMode:I

    if-ne v7, v5, :cond_a

    if-eqz v2, :cond_c

    .line 885
    invoke-virtual {v0}, Landroidx/leanback/widget/GuidedAction;->getDescription()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_9

    const/16 p3, 0x8

    goto :goto_0

    :cond_9
    move p3, v6

    :goto_0
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 887
    invoke-virtual {v0}, Landroidx/leanback/widget/GuidedAction;->getDescriptionInputType()I

    move-result p3

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setInputType(I)V

    goto :goto_1

    :cond_a
    if-ne v7, v4, :cond_b

    if-eqz v1, :cond_c

    .line 891
    invoke-virtual {v0}, Landroidx/leanback/widget/GuidedAction;->getInputType()I

    move-result p3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setInputType(I)V

    goto :goto_1

    :cond_b
    if-ne v7, v3, :cond_c

    .line 894
    iget-object v1, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mActivatorView:Landroid/view/View;

    if-eqz v1, :cond_c

    .line 895
    invoke-virtual {p0, p1, p2, p3}, Landroidx/leanback/widget/GuidedActionsStylist;->onEditActivatorView(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;ZZ)V

    .line 898
    :cond_c
    :goto_1
    iput v6, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mEditingMode:I

    .line 901
    :cond_d
    :goto_2
    invoke-virtual {p0, p1, v0, p2}, Landroidx/leanback/widget/GuidedActionsStylist;->onEditingModeChange(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;Landroidx/leanback/widget/GuidedAction;Z)V

    return-void
.end method

.method public onImeAppearing(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onImeDisappearing(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onProvideItemLayoutId()I
    .locals 0

    .line 608
    sget p0, Landroidx/leanback/R$layout;->lb_guidedactions_item:I

    return p0
.end method

.method public onProvideItemLayoutId(I)I
    .locals 2

    if-nez p1, :cond_0

    .line 629
    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedActionsStylist;->onProvideItemLayoutId()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    if-ne p1, p0, :cond_1

    .line 631
    sget p0, Landroidx/leanback/R$layout;->lb_guidedactions_datepicker_item:I

    return p0

    .line 633
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not supported in GuidedActionsStylist"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onProvideLayoutId()I
    .locals 0

    .line 577
    iget-boolean p0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mButtonActions:Z

    if-eqz p0, :cond_0

    sget p0, Landroidx/leanback/R$layout;->lb_guidedbuttonactions:I

    goto :goto_0

    :cond_0
    sget p0, Landroidx/leanback/R$layout;->lb_guidedactions:I

    :goto_0
    return p0
.end method

.method public onUpdateActivatorView(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;Landroidx/leanback/widget/GuidedAction;)Z
    .locals 4

    .line 1016
    instance-of p0, p2, Landroidx/leanback/widget/GuidedDatePickerAction;

    if-eqz p0, :cond_0

    .line 1017
    check-cast p2, Landroidx/leanback/widget/GuidedDatePickerAction;

    .line 1018
    iget-object p0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mActivatorView:Landroid/view/View;

    check-cast p0, Landroidx/leanback/widget/picker/DatePicker;

    .line 1019
    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedDatePickerAction;->getDate()J

    move-result-wide v0

    invoke-virtual {p0}, Landroidx/leanback/widget/picker/DatePicker;->getDate()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 1020
    invoke-virtual {p0}, Landroidx/leanback/widget/picker/DatePicker;->getDate()J

    move-result-wide p0

    invoke-virtual {p2, p0, p1}, Landroidx/leanback/widget/GuidedDatePickerAction;->setDate(J)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onUpdateExpandedViewHolder(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1402
    iput-object p1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroidx/leanback/widget/GuidedAction;

    .line 1403
    iget-object p1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroidx/leanback/widget/BaseGridView;->setPruneChild(Z)V

    goto :goto_0

    .line 1404
    :cond_0
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroidx/leanback/widget/GuidedAction;

    move-result-object v1

    iget-object v2, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroidx/leanback/widget/GuidedAction;

    if-eq v1, v2, :cond_1

    .line 1405
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroidx/leanback/widget/GuidedAction;

    move-result-object p1

    iput-object p1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroidx/leanback/widget/GuidedAction;

    .line 1406
    iget-object p1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/BaseGridView;->setPruneChild(Z)V

    .line 1410
    :cond_1
    :goto_0
    iget-object p1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/BaseGridView;->setAnimateChildLayout(Z)V

    .line 1411
    iget-object p1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    :goto_1
    if-ge v0, p1, :cond_2

    .line 1413
    iget-object v1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    .line 1414
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;

    .line 1415
    invoke-direct {p0, v1}, Landroidx/leanback/widget/GuidedActionsStylist;->updateChevronAndVisibility(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method onUpdateSubActionsGridView(Landroidx/leanback/widget/GuidedAction;Z)V
    .locals 3

    .line 1420
    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    if-eqz v0, :cond_1

    .line 1422
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1423
    iget-object v1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/GuidedActionAdapter;

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 p2, -0x2

    .line 1427
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/4 p2, -0x1

    .line 1428
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1429
    iget-object p2, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1430
    iget-object p2, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1431
    iget-object p2, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mSubActionsBackground:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1432
    iget-object p0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 1433
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedAction;->getSubActions()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/leanback/widget/GuidedActionAdapter;->setActions(Ljava/util/List;)V

    goto :goto_0

    .line 1437
    :cond_0
    iget-object p2, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/GuidedActionAdapter;

    .line 1438
    invoke-virtual {p2, p1}, Landroidx/leanback/widget/GuidedActionAdapter;->indexOf(Landroidx/leanback/widget/GuidedAction;)I

    move-result p1

    .line 1439
    iget-object p2, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    .line 1440
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1441
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1442
    iget-object p1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1443
    iget-object p1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mSubActionsBackground:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1444
    iget-object p1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1445
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/leanback/widget/GuidedActionAdapter;->setActions(Ljava/util/List;)V

    .line 1446
    iget-object p0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestFocus()Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setAsButtonActions()V
    .locals 1

    .line 520
    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 524
    iput-boolean v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mButtonActions:Z

    return-void

    .line 521
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setAsButtonActions() must be called before creating views"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setEditListener(Landroidx/leanback/widget/GuidedActionAdapter$EditListener;)V
    .locals 0

    .line 1033
    iput-object p1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mEditListener:Landroidx/leanback/widget/GuidedActionAdapter$EditListener;

    return-void
.end method

.method setEditingMode(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 821
    invoke-virtual {p0, p1, p2, v0}, Landroidx/leanback/widget/GuidedActionsStylist;->setEditingMode(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;ZZ)V

    return-void
.end method

.method setEditingMode(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;ZZ)V
    .locals 1

    .line 825
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->isInEditing()Z

    move-result v0

    if-eq p2, v0, :cond_0

    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedActionsStylist;->isInExpandTransition()Z

    move-result v0

    if-nez v0, :cond_0

    .line 826
    invoke-virtual {p0, p1, p2, p3}, Landroidx/leanback/widget/GuidedActionsStylist;->onEditingModeChange(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;ZZ)V

    :cond_0
    return-void
.end method

.method protected setupImeOptions(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;Landroidx/leanback/widget/GuidedAction;)V
    .locals 0

    .line 799
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->getEditableTitleView()Landroid/widget/EditText;

    move-result-object p2

    invoke-direct {p0, p2}, Landroidx/leanback/widget/GuidedActionsStylist;->setupNextImeOptions(Landroid/widget/EditText;)V

    .line 800
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->getEditableDescriptionView()Landroid/widget/EditText;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/leanback/widget/GuidedActionsStylist;->setupNextImeOptions(Landroid/widget/EditText;)V

    return-void
.end method

.method startExpanded(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1266
    iget-object v2, v0, Landroidx/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    .line 1268
    iget-object v5, v0, Landroidx/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    .line 1269
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v5

    check-cast v5, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;

    if-nez v1, :cond_0

    .line 1270
    iget-object v6, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_1

    .line 1274
    invoke-virtual {v5}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroidx/leanback/widget/GuidedAction;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroidx/leanback/widget/GuidedAction;

    move-result-object v7

    if-ne v6, v7, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_3

    return-void

    :cond_3
    if-eqz v1, :cond_4

    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    move v6, v3

    .line 1285
    :goto_2
    invoke-virtual {v5}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroidx/leanback/widget/GuidedAction;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/leanback/widget/GuidedAction;->hasSubActions()Z

    move-result v7

    if-eqz p2, :cond_c

    .line 1287
    invoke-static {v3}, Landroidx/leanback/transition/TransitionHelper;->createTransitionSet(Z)Ljava/lang/Object;

    move-result-object v8

    if-eqz v7, :cond_5

    .line 1288
    iget-object v9, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    goto :goto_3

    .line 1289
    :cond_5
    iget-object v9, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v9, v10

    :goto_3
    const/16 v10, 0x70

    .line 1290
    invoke-static {v10, v9}, Landroidx/leanback/transition/TransitionHelper;->createFadeAndShortSlide(IF)Ljava/lang/Object;

    move-result-object v9

    .line 1293
    new-instance v10, Landroidx/leanback/widget/GuidedActionsStylist$6;

    invoke-direct {v10, v0}, Landroidx/leanback/widget/GuidedActionsStylist$6;-><init>(Landroidx/leanback/widget/GuidedActionsStylist;)V

    invoke-static {v9, v10}, Landroidx/leanback/transition/TransitionHelper;->setEpicenterCallback(Ljava/lang/Object;Landroidx/leanback/transition/TransitionEpicenterCallback;)V

    .line 1303
    invoke-static {}, Landroidx/leanback/transition/TransitionHelper;->createChangeTransform()Ljava/lang/Object;

    move-result-object v10

    .line 1304
    invoke-static {v3}, Landroidx/leanback/transition/TransitionHelper;->createChangeBounds(Z)Ljava/lang/Object;

    move-result-object v11

    const/4 v12, 0x3

    .line 1305
    invoke-static {v12}, Landroidx/leanback/transition/TransitionHelper;->createFadeTransition(I)Ljava/lang/Object;

    move-result-object v12

    .line 1307
    invoke-static {v3}, Landroidx/leanback/transition/TransitionHelper;->createChangeBounds(Z)Ljava/lang/Object;

    move-result-object v13

    const-wide/16 v14, 0x64

    if-nez v1, :cond_6

    const-wide/16 v3, 0x96

    .line 1309
    invoke-static {v9, v3, v4}, Landroidx/leanback/transition/TransitionHelper;->setStartDelay(Ljava/lang/Object;J)V

    .line 1310
    invoke-static {v10, v14, v15}, Landroidx/leanback/transition/TransitionHelper;->setStartDelay(Ljava/lang/Object;J)V

    .line 1311
    invoke-static {v11, v14, v15}, Landroidx/leanback/transition/TransitionHelper;->setStartDelay(Ljava/lang/Object;J)V

    .line 1312
    invoke-static {v13, v14, v15}, Landroidx/leanback/transition/TransitionHelper;->setStartDelay(Ljava/lang/Object;J)V

    goto :goto_4

    .line 1314
    :cond_6
    invoke-static {v12, v14, v15}, Landroidx/leanback/transition/TransitionHelper;->setStartDelay(Ljava/lang/Object;J)V

    const-wide/16 v3, 0x32

    .line 1315
    invoke-static {v13, v3, v4}, Landroidx/leanback/transition/TransitionHelper;->setStartDelay(Ljava/lang/Object;J)V

    .line 1316
    invoke-static {v10, v3, v4}, Landroidx/leanback/transition/TransitionHelper;->setStartDelay(Ljava/lang/Object;J)V

    .line 1317
    invoke-static {v11, v3, v4}, Landroidx/leanback/transition/TransitionHelper;->setStartDelay(Ljava/lang/Object;J)V

    :goto_4
    const/4 v3, 0x0

    :goto_5
    if-ge v3, v2, :cond_9

    .line 1320
    iget-object v4, v0, Landroidx/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    .line 1321
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v4, v14}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    check-cast v4, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;

    if-ne v4, v5, :cond_8

    if-eqz v7, :cond_7

    .line 1325
    iget-object v14, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v10, v14}, Landroidx/leanback/transition/TransitionHelper;->include(Ljava/lang/Object;Landroid/view/View;)V

    .line 1326
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v11, v4}, Landroidx/leanback/transition/TransitionHelper;->include(Ljava/lang/Object;Landroid/view/View;)V

    :cond_7
    const/4 v14, 0x1

    goto :goto_6

    .line 1330
    :cond_8
    iget-object v14, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v9, v14}, Landroidx/leanback/transition/TransitionHelper;->include(Ljava/lang/Object;Landroid/view/View;)V

    .line 1331
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v14, 0x1

    invoke-static {v12, v4, v14}, Landroidx/leanback/transition/TransitionHelper;->exclude(Ljava/lang/Object;Landroid/view/View;Z)V

    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1334
    :cond_9
    iget-object v2, v0, Landroidx/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    invoke-static {v13, v2}, Landroidx/leanback/transition/TransitionHelper;->include(Ljava/lang/Object;Landroid/view/View;)V

    .line 1335
    iget-object v2, v0, Landroidx/leanback/widget/GuidedActionsStylist;->mSubActionsBackground:Landroid/view/View;

    invoke-static {v13, v2}, Landroidx/leanback/transition/TransitionHelper;->include(Ljava/lang/Object;Landroid/view/View;)V

    .line 1336
    invoke-static {v8, v9}, Landroidx/leanback/transition/TransitionHelper;->addTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v7, :cond_a

    .line 1340
    invoke-static {v8, v10}, Landroidx/leanback/transition/TransitionHelper;->addTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1341
    invoke-static {v8, v11}, Landroidx/leanback/transition/TransitionHelper;->addTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1343
    :cond_a
    invoke-static {v8, v12}, Landroidx/leanback/transition/TransitionHelper;->addTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1344
    invoke-static {v8, v13}, Landroidx/leanback/transition/TransitionHelper;->addTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1345
    iput-object v8, v0, Landroidx/leanback/widget/GuidedActionsStylist;->mExpandTransition:Ljava/lang/Object;

    .line 1346
    new-instance v2, Landroidx/leanback/widget/GuidedActionsStylist$7;

    invoke-direct {v2, v0}, Landroidx/leanback/widget/GuidedActionsStylist$7;-><init>(Landroidx/leanback/widget/GuidedActionsStylist;)V

    invoke-static {v8, v2}, Landroidx/leanback/transition/TransitionHelper;->addTransitionListener(Ljava/lang/Object;Landroidx/leanback/transition/TransitionListener;)V

    if-eqz v6, :cond_b

    if-eqz v7, :cond_b

    .line 1354
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 1355
    iget-object v3, v0, Landroidx/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTop()I

    move-result v4

    sub-int v4, v2, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->offsetTopAndBottom(I)V

    .line 1356
    iget-object v3, v0, Landroidx/leanback/widget/GuidedActionsStylist;->mSubActionsBackground:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {v3, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1358
    :cond_b
    iget-object v2, v0, Landroidx/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    iget-object v3, v0, Landroidx/leanback/widget/GuidedActionsStylist;->mExpandTransition:Ljava/lang/Object;

    invoke-static {v2, v3}, Landroidx/leanback/transition/TransitionHelper;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 1360
    :cond_c
    invoke-virtual/range {p0 .. p1}, Landroidx/leanback/widget/GuidedActionsStylist;->onUpdateExpandedViewHolder(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;)V

    if-eqz v7, :cond_d

    .line 1362
    invoke-virtual {v5}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroidx/leanback/widget/GuidedAction;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroidx/leanback/widget/GuidedActionsStylist;->onUpdateSubActionsGridView(Landroidx/leanback/widget/GuidedAction;Z)V

    :cond_d
    return-void
.end method
