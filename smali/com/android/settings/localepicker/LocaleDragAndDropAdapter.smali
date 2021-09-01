.class Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "LocaleDragAndDropAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDragEnabled:Z

.field private final mFeedItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field private mLocalesSetLast:Landroid/os/LocaleList;

.field private mLocalesToSetNext:Landroid/os/LocaleList;

.field private mNumberFormatter:Ljava/text/NumberFormat;

.field private mParentView:Landroidx/recyclerview/widget/RecyclerView;

.field private mRemoveMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;)V"
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mParentView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    .line 56
    iput-boolean v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    const/4 v2, 0x1

    .line 57
    iput-boolean v2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mDragEnabled:Z

    .line 58
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mNumberFormatter:Ljava/text/NumberFormat;

    .line 277
    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesToSetNext:Landroid/os/LocaleList;

    .line 278
    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesSetLast:Landroid/os/LocaleList;

    .line 86
    iput-object p2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    .line 87
    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mContext:Landroid/content/Context;

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 p2, 0x41000000    # 8.0f

    .line 89
    invoke-static {v2, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    .line 92
    new-instance p2, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;

    const/4 v2, 0x3

    invoke-direct {v0, p0, v2, v1, p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;-><init>(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;IIF)V

    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object p2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mDragEnabled:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Landroidx/recyclerview/widget/ItemTouchHelper;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Landroid/os/LocaleList;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesToSetNext:Landroid/os/LocaleList;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;Landroid/os/LocaleList;)Landroid/os/LocaleList;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesToSetNext:Landroid/os/LocaleList;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Landroid/os/LocaleList;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesSetLast:Landroid/os/LocaleList;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;Landroid/os/LocaleList;)Landroid/os/LocaleList;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesSetLast:Landroid/os/LocaleList;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Landroid/content/Context;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;Ljava/text/NumberFormat;)Ljava/text/NumberFormat;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mNumberFormatter:Ljava/text/NumberFormat;

    return-object p1
.end method

.method private setDragEnabled(Z)V
    .locals 0

    .line 311
    iput-boolean p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mDragEnabled:Z

    return-void
.end method


# virtual methods
.method addLocale(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 261
    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->doTheUpdate()V

    return-void
.end method

.method public doTheUpdate()V
    .locals 4

    .line 265
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 266
    new-array v1, v0, [Ljava/util/Locale;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 269
    iget-object v3, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 270
    invoke-virtual {v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 273
    :cond_0
    new-instance v0, Landroid/os/LocaleList;

    invoke-direct {v0, v1}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    .line 274
    invoke-virtual {p0, v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->updateLocalesWhenAnimationStops(Landroid/os/LocaleList;)V

    return-void
.end method

.method getCheckedCount()I
    .locals 2

    .line 246
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 247
    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getItemCount()I
    .locals 3

    .line 181
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x2

    if-lt v0, v2, :cond_2

    .line 182
    iget-boolean v2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    .line 185
    invoke-direct {p0, v1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->setDragEnabled(Z)V

    goto :goto_2

    .line 183
    :cond_2
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->setDragEnabled(Z)V

    :goto_2
    return v0
.end method

.method isFirstLocaleChecked()Z
    .locals 1

    .line 255
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method isRemoveMode()Z
    .locals 0

    .line 218
    iget-boolean p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 47
    check-cast p1, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->onBindViewHolder(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;I)V
    .locals 5

    .line 153
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 154
    invoke-virtual {p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;->getLocaleDragCell()Lcom/android/settings/localepicker/LocaleDragCell;

    move-result-object p1

    .line 155
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameNative()Ljava/lang/String;

    move-result-object v1

    .line 156
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameInUiLanguage()Ljava/lang/String;

    move-result-object v2

    .line 157
    invoke-virtual {p1, v1, v2}, Lcom/android/settings/localepicker/LocaleDragCell;->setLabelAndDescription(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isTranslated()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/settings/localepicker/LocaleDragCell;->setLocalized(Z)V

    .line 159
    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mNumberFormatter:Ljava/text/NumberFormat;

    const/4 v2, 0x1

    add-int/2addr p2, v2

    int-to-long v3, p2

    invoke-virtual {v1, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/localepicker/LocaleDragCell;->setMiniLabel(Ljava/lang/String;)V

    .line 160
    iget-boolean p2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    invoke-virtual {p1, p2}, Lcom/android/settings/localepicker/LocaleDragCell;->setShowCheckbox(Z)V

    .line 161
    iget-boolean p2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    xor-int/2addr p2, v2

    invoke-virtual {p1, p2}, Lcom/android/settings/localepicker/LocaleDragCell;->setShowMiniLabel(Z)V

    .line 162
    iget-boolean p2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    const/4 v1, 0x0

    if-nez p2, :cond_0

    iget-boolean p2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mDragEnabled:Z

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p1, v2}, Lcom/android/settings/localepicker/LocaleDragCell;->setShowHandle(Z)V

    .line 163
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 164
    invoke-virtual {p1}, Lcom/android/settings/localepicker/LocaleDragCell;->getCheckbox()Landroid/widget/CheckBox;

    move-result-object p2

    const/4 v2, 0x0

    .line 167
    invoke-virtual {p2, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 168
    iget-boolean v2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getChecked()Z

    move-result v1

    :cond_1
    invoke-virtual {p2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 169
    new-instance v0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$2;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$2;-><init>(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;Lcom/android/settings/localepicker/LocaleDragCell;)V

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;
    .locals 2

    .line 146
    iget-object p2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/settings/R$layout;->locale_drag_cell:I

    const/4 v1, 0x0

    .line 147
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/localepicker/LocaleDragCell;

    .line 148
    new-instance p2, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;-><init>(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;Lcom/android/settings/localepicker/LocaleDragCell;)V

    return-object p2
.end method

.method onItemMove(II)V
    .locals 4

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 193
    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 194
    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 198
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 199
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Negative position in onItemMove %d -> %d"

    .line 198
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocaleDragAndDropAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 202
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 203
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    return-void
.end method

.method removeChecked()V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 236
    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 240
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->doTheUpdate()V

    return-void
.end method

.method removeItem(I)V
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_2

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 230
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    :goto_0
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 337
    iget-boolean v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    if-eqz v0, :cond_2

    const-string v0, "selectedLocales"

    .line 339
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 340
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 344
    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->setChecked(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 346
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    nop

    :cond_2
    :goto_1
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 321
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 322
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 323
    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 324
    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string p0, "selectedLocales"

    .line 327
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method

.method public setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mParentView:Landroidx/recyclerview/widget/RecyclerView;

    .line 141
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method setRemoveMode(Z)V
    .locals 3

    .line 209
    iput-boolean p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    .line 210
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 212
    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v2, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->setChecked(Z)V

    .line 213
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateLocalesWhenAnimationStops(Landroid/os/LocaleList;)V
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesToSetNext:Landroid/os/LocaleList;

    invoke-virtual {p1, v0}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 287
    :cond_0
    invoke-static {p1}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;)V

    .line 289
    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesToSetNext:Landroid/os/LocaleList;

    .line 290
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mParentView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    .line 291
    new-instance v0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$3;

    invoke-direct {v0, p0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$3;-><init>(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)Z

    return-void
.end method
