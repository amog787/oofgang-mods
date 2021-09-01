.class public Landroidx/slice/core/SliceActionImpl;
.super Ljava/lang/Object;
.source "SliceActionImpl.java"

# interfaces
.implements Landroidx/slice/core/SliceAction;


# instance fields
.field private mAction:Landroid/app/PendingIntent;

.field private mActionItem:Landroidx/slice/SliceItem;

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mIcon:Landroidx/core/graphics/drawable/IconCompat;

.field private mImageMode:I

.field private mIsActivity:Z

.field private mIsChecked:Z

.field private mIsToggle:Z

.field private mPriority:I

.field private mSliceItem:Landroidx/slice/SliceItem;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)V
    .locals 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 63
    iput v0, p0, Landroidx/slice/core/SliceActionImpl;->mImageMode:I

    const/4 v0, -0x1

    .line 68
    iput v0, p0, Landroidx/slice/core/SliceActionImpl;->mPriority:I

    .line 105
    iput-object p1, p0, Landroidx/slice/core/SliceActionImpl;->mAction:Landroid/app/PendingIntent;

    .line 106
    iput-object p2, p0, Landroidx/slice/core/SliceActionImpl;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 107
    iput-object p4, p0, Landroidx/slice/core/SliceActionImpl;->mTitle:Ljava/lang/CharSequence;

    .line 108
    iput p3, p0, Landroidx/slice/core/SliceActionImpl;->mImageMode:I

    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 123
    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)V

    .line 124
    iput-boolean p4, p0, Landroidx/slice/core/SliceActionImpl;->mIsChecked:Z

    const/4 p1, 0x1

    .line 125
    iput-boolean p1, p0, Landroidx/slice/core/SliceActionImpl;->mIsToggle:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;Ljava/lang/CharSequence;Z)V
    .locals 1

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 63
    iput v0, p0, Landroidx/slice/core/SliceActionImpl;->mImageMode:I

    const/4 v0, -0x1

    .line 68
    iput v0, p0, Landroidx/slice/core/SliceActionImpl;->mPriority:I

    .line 138
    iput-object p1, p0, Landroidx/slice/core/SliceActionImpl;->mAction:Landroid/app/PendingIntent;

    .line 139
    iput-object p2, p0, Landroidx/slice/core/SliceActionImpl;->mTitle:Ljava/lang/CharSequence;

    const/4 p1, 0x1

    .line 140
    iput-boolean p1, p0, Landroidx/slice/core/SliceActionImpl;->mIsToggle:Z

    .line 141
    iput-boolean p3, p0, Landroidx/slice/core/SliceActionImpl;->mIsChecked:Z

    return-void
.end method

.method public constructor <init>(Landroidx/slice/SliceItem;)V
    .locals 5

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 63
    iput v0, p0, Landroidx/slice/core/SliceActionImpl;->mImageMode:I

    const/4 v0, -0x1

    .line 68
    iput v0, p0, Landroidx/slice/core/SliceActionImpl;->mPriority:I

    .line 154
    iput-object p1, p0, Landroidx/slice/core/SliceActionImpl;->mSliceItem:Landroidx/slice/SliceItem;

    const-string v1, "action"

    .line 155
    invoke-static {p1, v1}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 160
    :cond_0
    iput-object p1, p0, Landroidx/slice/core/SliceActionImpl;->mActionItem:Landroidx/slice/SliceItem;

    .line 161
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getAction()Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Landroidx/slice/core/SliceActionImpl;->mAction:Landroid/app/PendingIntent;

    .line 162
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v1

    const-string v2, "image"

    invoke-static {v1, v2}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 164
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v2

    iput-object v2, p0, Landroidx/slice/core/SliceActionImpl;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 165
    invoke-static {v1}, Landroidx/slice/core/SliceActionImpl;->parseImageMode(Landroidx/slice/SliceItem;)I

    move-result v1

    iput v1, p0, Landroidx/slice/core/SliceActionImpl;->mImageMode:I

    .line 167
    :cond_1
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "text"

    const-string v4, "title"

    invoke-static {v1, v3, v4, v2}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 170
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getSanitizedText()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroidx/slice/core/SliceActionImpl;->mTitle:Ljava/lang/CharSequence;

    .line 172
    :cond_2
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v1

    const-string v2, "content_description"

    invoke-static {v1, v3, v2}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 175
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroidx/slice/core/SliceActionImpl;->mContentDescription:Ljava/lang/CharSequence;

    .line 177
    :cond_3
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "toggle"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/slice/core/SliceActionImpl;->mIsToggle:Z

    if-eqz v1, :cond_4

    const-string v1, "selected"

    .line 179
    invoke-virtual {p1, v1}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/slice/core/SliceActionImpl;->mIsChecked:Z

    .line 181
    :cond_4
    iget-object v1, p0, Landroidx/slice/core/SliceActionImpl;->mSliceItem:Landroidx/slice/SliceItem;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/slice/core/SliceActionImpl;->mIsActivity:Z

    .line 182
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object p1

    const-string v1, "int"

    const-string v2, "priority"

    invoke-static {p1, v1, v2}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 184
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getInt()I

    move-result v0

    :cond_5
    iput v0, p0, Landroidx/slice/core/SliceActionImpl;->mPriority:I

    return-void
.end method

.method private buildSliceContent(Landroidx/slice/Slice$Builder;)Landroidx/slice/Slice$Builder;
    .locals 5

    .line 339
    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-direct {v0, p1}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    .line 340
    iget-object v1, p0, Landroidx/slice/core/SliceActionImpl;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 341
    iget v1, p0, Landroidx/slice/core/SliceActionImpl;->mImageMode:I

    if-nez v1, :cond_0

    new-array v1, v3, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, "no_tint"

    .line 343
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 344
    :goto_0
    iget-object v4, p0, Landroidx/slice/core/SliceActionImpl;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    invoke-virtual {v0, v4, v2, v1}, Landroidx/slice/Slice$Builder;->addIcon(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 346
    :cond_1
    iget-object v1, p0, Landroidx/slice/core/SliceActionImpl;->mTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    const-string v4, "title"

    .line 347
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v4}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 349
    :cond_2
    iget-object v1, p0, Landroidx/slice/core/SliceActionImpl;->mContentDescription:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    new-array v2, v3, [Ljava/lang/String;

    const-string v4, "content_description"

    .line 350
    invoke-virtual {v0, v1, v4, v2}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 352
    :cond_3
    iget-boolean v1, p0, Landroidx/slice/core/SliceActionImpl;->mIsToggle:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Landroidx/slice/core/SliceActionImpl;->mIsChecked:Z

    if-eqz v1, :cond_4

    const-string v1, "selected"

    .line 353
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 355
    :cond_4
    iget v1, p0, Landroidx/slice/core/SliceActionImpl;->mPriority:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "priority"

    .line 356
    invoke-virtual {v0, v1, v3, v2}, Landroidx/slice/Slice$Builder;->addInt(ILjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 358
    :cond_5
    iget-boolean p0, p0, Landroidx/slice/core/SliceActionImpl;->mIsActivity:Z

    if-eqz p0, :cond_6

    const-string p0, "activity"

    .line 359
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    :cond_6
    return-object v0
.end method

.method public static parseImageMode(Landroidx/slice/SliceItem;)I
    .locals 2

    const-string v0, "no_tint"

    .line 381
    invoke-virtual {p0, v0}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "raw"

    .line 384
    invoke-virtual {p0, v0}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "large"

    if-eqz v0, :cond_2

    .line 385
    invoke-virtual {p0, v1}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x4

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    :goto_0
    return p0

    .line 387
    :cond_2
    invoke-virtual {p0, v1}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x2

    return p0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public buildPrimaryActionSlice(Landroidx/slice/Slice$Builder;)Landroidx/slice/Slice;
    .locals 1

    .line 333
    invoke-direct {p0, p1}, Landroidx/slice/core/SliceActionImpl;->buildSliceContent(Landroidx/slice/Slice$Builder;)Landroidx/slice/Slice$Builder;

    move-result-object p0

    const-string p1, "shortcut"

    const-string v0, "title"

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    invoke-virtual {p0}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0
.end method

.method public buildSlice(Landroidx/slice/Slice$Builder;)Landroidx/slice/Slice;
    .locals 2

    const-string v0, "shortcut"

    .line 322
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    iget-object v0, p0, Landroidx/slice/core/SliceActionImpl;->mAction:Landroid/app/PendingIntent;

    .line 323
    invoke-direct {p0, p1}, Landroidx/slice/core/SliceActionImpl;->buildSliceContent(Landroidx/slice/Slice$Builder;)Landroidx/slice/Slice$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/slice/core/SliceActionImpl;->getSubtype()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, v1, p0}, Landroidx/slice/Slice$Builder;->addAction(Landroid/app/PendingIntent;Landroidx/slice/Slice;Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 324
    invoke-virtual {p1}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0
.end method

.method public getAction()Landroid/app/PendingIntent;
    .locals 1

    .line 222
    iget-object v0, p0, Landroidx/slice/core/SliceActionImpl;->mAction:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/slice/core/SliceActionImpl;->mActionItem:Landroidx/slice/SliceItem;

    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getAction()Landroid/app/PendingIntent;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getActionItem()Landroidx/slice/SliceItem;
    .locals 0

    .line 230
    iget-object p0, p0, Landroidx/slice/core/SliceActionImpl;->mActionItem:Landroidx/slice/SliceItem;

    return-object p0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 0

    .line 258
    iget-object p0, p0, Landroidx/slice/core/SliceActionImpl;->mContentDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getIcon()Landroidx/core/graphics/drawable/IconCompat;
    .locals 0

    .line 240
    iget-object p0, p0, Landroidx/slice/core/SliceActionImpl;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    return-object p0
.end method

.method public getImageMode()I
    .locals 0

    .line 290
    iget p0, p0, Landroidx/slice/core/SliceActionImpl;->mImageMode:I

    return p0
.end method

.method public getPriority()I
    .locals 0

    .line 266
    iget p0, p0, Landroidx/slice/core/SliceActionImpl;->mPriority:I

    return p0
.end method

.method public getSliceItem()Landroidx/slice/SliceItem;
    .locals 0

    .line 307
    iget-object p0, p0, Landroidx/slice/core/SliceActionImpl;->mSliceItem:Landroidx/slice/SliceItem;

    return-object p0
.end method

.method public getSubtype()Ljava/lang/String;
    .locals 0

    .line 369
    iget-boolean p0, p0, Landroidx/slice/core/SliceActionImpl;->mIsToggle:Z

    if-eqz p0, :cond_0

    const-string p0, "toggle"

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    .line 249
    iget-object p0, p0, Landroidx/slice/core/SliceActionImpl;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public isChecked()Z
    .locals 0

    .line 282
    iget-boolean p0, p0, Landroidx/slice/core/SliceActionImpl;->mIsChecked:Z

    return p0
.end method

.method public isDefaultToggle()Z
    .locals 1

    .line 298
    iget-boolean v0, p0, Landroidx/slice/core/SliceActionImpl;->mIsToggle:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/slice/core/SliceActionImpl;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isToggle()Z
    .locals 0

    .line 274
    iget-boolean p0, p0, Landroidx/slice/core/SliceActionImpl;->mIsToggle:Z

    return p0
.end method

.method public setActivity(Z)V
    .locals 0

    .line 373
    iput-boolean p1, p0, Landroidx/slice/core/SliceActionImpl;->mIsActivity:Z

    return-void
.end method
