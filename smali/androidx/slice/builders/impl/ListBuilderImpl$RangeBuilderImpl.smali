.class public Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;
.super Landroidx/slice/builders/impl/TemplateBuilderImpl;
.source "ListBuilderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/builders/impl/ListBuilderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RangeBuilderImpl"
.end annotation


# instance fields
.field protected mContentDescr:Ljava/lang/CharSequence;

.field protected mLayoutDir:I

.field protected mMax:I

.field protected mMin:I

.field private mMode:I

.field protected mPrimaryAction:Landroidx/slice/builders/SliceAction;

.field private mStartItem:Landroidx/slice/Slice;

.field protected mSubtitle:Ljava/lang/CharSequence;

.field protected mTitle:Ljava/lang/CharSequence;

.field protected mValue:I

.field protected mValueSet:Z


# direct methods
.method constructor <init>(Landroidx/slice/Slice$Builder;Landroidx/slice/builders/ListBuilder$RangeBuilder;)V
    .locals 1

    const/4 v0, 0x0

    .line 323
    invoke-direct {p0, p1, v0}, Landroidx/slice/builders/impl/TemplateBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    const/4 p1, 0x0

    .line 310
    iput p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;->mMin:I

    const/16 v0, 0x64

    .line 311
    iput v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;->mMax:I

    .line 312
    iput p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;->mValue:I

    .line 313
    iput-boolean p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;->mValueSet:Z

    const/4 v0, -0x1

    .line 318
    iput v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;->mLayoutDir:I

    .line 319
    iput p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;->mMode:I

    if-eqz p2, :cond_0

    .line 325
    invoke-virtual {p2}, Landroidx/slice/builders/ListBuilder$RangeBuilder;->isValueSet()Z

    move-result p1

    iput-boolean p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;->mValueSet:Z

    .line 326
    invoke-virtual {p2}, Landroidx/slice/builders/ListBuilder$RangeBuilder;->getMax()I

    move-result p1

    iput p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;->mMax:I

    .line 327
    invoke-virtual {p2}, Landroidx/slice/builders/ListBuilder$RangeBuilder;->getValue()I

    move-result p1

    iput p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;->mValue:I

    .line 328
    invoke-virtual {p2}, Landroidx/slice/builders/ListBuilder$RangeBuilder;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;->mTitle:Ljava/lang/CharSequence;

    .line 329
    invoke-virtual {p2}, Landroidx/slice/builders/ListBuilder$RangeBuilder;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;->mSubtitle:Ljava/lang/CharSequence;

    .line 330
    invoke-virtual {p2}, Landroidx/slice/builders/ListBuilder$RangeBuilder;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;->mContentDescr:Ljava/lang/CharSequence;

    .line 331
    invoke-virtual {p2}, Landroidx/slice/builders/ListBuilder$RangeBuilder;->getPrimaryAction()Landroidx/slice/builders/SliceAction;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    .line 332
    invoke-virtual {p2}, Landroidx/slice/builders/ListBuilder$RangeBuilder;->getLayoutDirection()I

    move-result p1

    iput p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;->mLayoutDir:I

    .line 333
    invoke-virtual {p2}, Landroidx/slice/builders/ListBuilder$RangeBuilder;->getMode()I

    move-result p1

    iput p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;->mMode:I

    .line 334
    invoke-virtual {p2}, Landroidx/slice/builders/ListBuilder$RangeBuilder;->getTitleIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 335
    invoke-virtual {p2}, Landroidx/slice/builders/ListBuilder$RangeBuilder;->getTitleIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/slice/builders/ListBuilder$RangeBuilder;->getTitleImageMode()I

    move-result v0

    .line 336
    invoke-virtual {p2}, Landroidx/slice/builders/ListBuilder$RangeBuilder;->isTitleItemLoading()Z

    move-result p2

    .line 335
    invoke-virtual {p0, p1, v0, p2}, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;IZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public apply(Landroidx/slice/Slice$Builder;)V
    .locals 4

    .line 352
    iget-boolean v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;->mValueSet:Z

    if-nez v0, :cond_0

    .line 354
    iget v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;->mMin:I

    iput v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;->mValue:I

    .line 356
    :cond_0
    iget v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;->mMin:I

    iget v1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;->mValue:I

    if-gt v0, v1, :cond_7

    iget v2, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;->mMax:I

    if-gt v1, v2, :cond_7

    if-ge v0, v2, :cond_7

    .line 362
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;->mStartItem:Landroidx/slice/Slice;

    if-eqz v0, :cond_1

    .line 363
    invoke-virtual {p1, v0}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;

    .line 365
    :cond_1
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;->mTitle:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v2, "title"

    .line 366
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 368
    :cond_2
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;->mSubtitle:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    new-array v3, v2, [Ljava/lang/String;

    .line 369
    invoke-virtual {p1, v0, v1, v3}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 371
    :cond_3
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;->mContentDescr:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    new-array v1, v2, [Ljava/lang/String;

    const-string v3, "content_description"

    .line 372
    invoke-virtual {p1, v0, v3, v1}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 374
    :cond_4
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    if-eqz v0, :cond_5

    .line 375
    invoke-virtual {v0, p1}, Landroidx/slice/builders/SliceAction;->setPrimaryAction(Landroidx/slice/Slice$Builder;)V

    .line 377
    :cond_5
    iget v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;->mLayoutDir:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    new-array v1, v2, [Ljava/lang/String;

    const-string v3, "layout_direction"

    .line 378
    invoke-virtual {p1, v0, v3, v1}, Landroidx/slice/Slice$Builder;->addInt(ILjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    :cond_6
    const-string v0, "list_item"

    .line 380
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    iget v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;->mMin:I

    new-array v1, v2, [Ljava/lang/String;

    const-string v3, "min"

    .line 381
    invoke-virtual {p1, v0, v3, v1}, Landroidx/slice/Slice$Builder;->addInt(ILjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    iget v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;->mMax:I

    new-array v1, v2, [Ljava/lang/String;

    const-string v3, "max"

    .line 382
    invoke-virtual {p1, v0, v3, v1}, Landroidx/slice/Slice$Builder;->addInt(ILjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    iget v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;->mValue:I

    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v3, "value"

    .line 383
    invoke-virtual {p1, v0, v3, v1}, Landroidx/slice/Slice$Builder;->addInt(ILjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    iget p0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;->mMode:I

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "range_mode"

    .line 384
    invoke-virtual {p1, p0, v1, v0}, Landroidx/slice/Slice$Builder;->addInt(ILjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    return-void

    .line 357
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid range values, min="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;->mMin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;->mValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", max="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;->mMax:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " ensure value falls within (min, max) and min < max."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method hasText()Z
    .locals 1

    .line 387
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;->mSubtitle:Ljava/lang/CharSequence;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method setTitleItem(Landroidx/core/graphics/drawable/IconCompat;IZ)V
    .locals 2

    .line 342
    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-virtual {p0}, Landroidx/slice/builders/impl/TemplateBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    .line 343
    invoke-virtual {p0, p2, p3}, Landroidx/slice/builders/impl/TemplateBuilderImpl;->parseImageMode(IZ)Ljava/util/ArrayList;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroidx/slice/Slice$Builder;->addIcon(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/String;Ljava/util/List;)Landroidx/slice/Slice$Builder;

    if-eqz p3, :cond_0

    const-string p1, "partial"

    .line 345
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    :cond_0
    const-string p1, "title"

    .line 347
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    invoke-virtual {v0}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;->mStartItem:Landroidx/slice/Slice;

    return-void
.end method
