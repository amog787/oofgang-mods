.class public Landroidx/slice/builders/impl/ListBuilderImpl$InputRangeBuilderImpl;
.super Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;
.source "ListBuilderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/builders/impl/ListBuilderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputRangeBuilderImpl"
.end annotation


# instance fields
.field private mAction:Landroid/app/PendingIntent;

.field private mEndItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/slice/Slice;",
            ">;"
        }
    .end annotation
.end field

.field private mStartItem:Landroidx/slice/Slice;

.field private mThumb:Landroidx/core/graphics/drawable/IconCompat;


# direct methods
.method constructor <init>(Landroidx/slice/Slice$Builder;Landroidx/slice/builders/ListBuilder$InputRangeBuilder;)V
    .locals 4

    const/4 v0, 0x0

    .line 401
    invoke-direct {p0, p1, v0}, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/builders/ListBuilder$RangeBuilder;)V

    .line 398
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$InputRangeBuilderImpl;->mEndItems:Ljava/util/ArrayList;

    .line 402
    invoke-virtual {p2}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->isValueSet()Z

    move-result p1

    iput-boolean p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;->mValueSet:Z

    .line 403
    invoke-virtual {p2}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->getMin()I

    move-result p1

    iput p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;->mMin:I

    .line 404
    invoke-virtual {p2}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->getMax()I

    move-result p1

    iput p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;->mMax:I

    .line 405
    invoke-virtual {p2}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->getValue()I

    move-result p1

    iput p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;->mValue:I

    .line 406
    invoke-virtual {p2}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;->mTitle:Ljava/lang/CharSequence;

    .line 407
    invoke-virtual {p2}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;->mSubtitle:Ljava/lang/CharSequence;

    .line 408
    invoke-virtual {p2}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;->mContentDescr:Ljava/lang/CharSequence;

    .line 409
    invoke-virtual {p2}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->getPrimaryAction()Landroidx/slice/builders/SliceAction;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    .line 410
    invoke-virtual {p2}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->getLayoutDirection()I

    move-result p1

    iput p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;->mLayoutDir:I

    .line 411
    invoke-virtual {p2}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->getInputAction()Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$InputRangeBuilderImpl;->mAction:Landroid/app/PendingIntent;

    .line 412
    invoke-virtual {p2}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->getThumb()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$InputRangeBuilderImpl;->mThumb:Landroidx/core/graphics/drawable/IconCompat;

    .line 413
    invoke-virtual {p2}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->getTitleIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 414
    invoke-virtual {p2}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->getTitleIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->getTitleImageMode()I

    move-result v0

    .line 415
    invoke-virtual {p2}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->isTitleItemLoading()Z

    move-result v1

    .line 414
    invoke-virtual {p0, p1, v0, v1}, Landroidx/slice/builders/impl/ListBuilderImpl$InputRangeBuilderImpl;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;IZ)V

    .line 417
    :cond_0
    invoke-virtual {p2}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->getEndItems()Ljava/util/List;

    move-result-object p1

    .line 418
    invoke-virtual {p2}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->getEndTypes()Ljava/util/List;

    move-result-object v0

    .line 419
    invoke-virtual {p2}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->getEndLoads()Ljava/util/List;

    move-result-object p2

    const/4 v1, 0x0

    .line 420
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 421
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 422
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/builders/SliceAction;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {p0, v2, v3}, Landroidx/slice/builders/impl/ListBuilderImpl$InputRangeBuilderImpl;->addEndItem(Landroidx/slice/builders/SliceAction;Z)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private addEndItem(Landroidx/slice/builders/SliceAction;Z)V
    .locals 2

    .line 438
    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-virtual {p0}, Landroidx/slice/builders/impl/TemplateBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    if-eqz p2, :cond_0

    const-string p2, "partial"

    .line 440
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 442
    :cond_0
    iget-object p0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$InputRangeBuilderImpl;->mEndItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroidx/slice/builders/SliceAction;->buildSlice(Landroidx/slice/Slice$Builder;)Landroidx/slice/Slice;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public apply(Landroidx/slice/Slice$Builder;)V
    .locals 5

    .line 447
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$InputRangeBuilderImpl;->mAction:Landroid/app/PendingIntent;

    if-eqz v0, :cond_3

    .line 450
    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-direct {v0, p1}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    .line 451
    invoke-super {p0, v0}, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;->apply(Landroidx/slice/Slice$Builder;)V

    .line 452
    iget-object v1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$InputRangeBuilderImpl;->mThumb:Landroidx/core/graphics/drawable/IconCompat;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    new-array v4, v2, [Ljava/lang/String;

    .line 453
    invoke-virtual {v0, v1, v3, v4}, Landroidx/slice/Slice$Builder;->addIcon(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 455
    :cond_0
    iget-object v1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$InputRangeBuilderImpl;->mAction:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v0

    const-string v3, "range"

    invoke-virtual {p1, v1, v0, v3}, Landroidx/slice/Slice$Builder;->addAction(Landroid/app/PendingIntent;Landroidx/slice/Slice;Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    const-string v0, "list_item"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 456
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$InputRangeBuilderImpl;->mStartItem:Landroidx/slice/Slice;

    if-eqz v0, :cond_1

    .line 457
    invoke-virtual {p1, v0}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;

    .line 459
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$InputRangeBuilderImpl;->mEndItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 460
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$InputRangeBuilderImpl;->mEndItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/Slice;

    invoke-virtual {p1, v0}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 448
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Input ranges must have an associated action."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method setTitleItem(Landroidx/core/graphics/drawable/IconCompat;IZ)V
    .locals 2

    .line 429
    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-virtual {p0}, Landroidx/slice/builders/impl/TemplateBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    .line 430
    invoke-virtual {p0, p2, p3}, Landroidx/slice/builders/impl/TemplateBuilderImpl;->parseImageMode(IZ)Ljava/util/ArrayList;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroidx/slice/Slice$Builder;->addIcon(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/String;Ljava/util/List;)Landroidx/slice/Slice$Builder;

    if-eqz p3, :cond_0

    const-string p1, "partial"

    .line 432
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    :cond_0
    const-string p1, "title"

    .line 434
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    invoke-virtual {v0}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$InputRangeBuilderImpl;->mStartItem:Landroidx/slice/Slice;

    return-void
.end method
