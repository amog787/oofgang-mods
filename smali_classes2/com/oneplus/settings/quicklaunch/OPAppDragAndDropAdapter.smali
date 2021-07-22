.class Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "OPAppDragAndDropAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter$CustomViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter$CustomViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mAppItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDragEnabled:Z

.field private final mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field private mParentView:Landroidx/recyclerview/widget/RecyclerView;

.field private mRemoveMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;)V"
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->mParentView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->mRemoveMode:Z

    const/4 v1, 0x1

    .line 56
    iput-boolean v1, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->mDragEnabled:Z

    .line 57
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    .line 90
    iput-object p2, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->mAppItemList:Ljava/util/List;

    .line 91
    iput-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->mContext:Landroid/content/Context;

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 p2, 0x41000000    # 8.0f

    .line 93
    invoke-static {v1, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    .line 96
    new-instance p2, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v1, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter$1;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2, v0, p1}, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter$1;-><init>(Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;IIF)V

    invoke-direct {p2, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object p2, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->mDragEnabled:Z

    return p0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;)Landroidx/recyclerview/widget/ItemTouchHelper;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;)Ljava/util/List;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->mAppItemList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;)Landroid/content/Context;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private setDragEnabled(Z)V
    .locals 0

    .line 341
    iput-boolean p1, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->mDragEnabled:Z

    return-void
.end method


# virtual methods
.method public doTheUpdate()V
    .locals 0

    .line 309
    invoke-virtual {p0}, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->updateLocalesWhenAnimationStops()V

    return-void
.end method

.method public getItemCount()I
    .locals 3

    .line 198
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->mAppItemList:Ljava/util/List;

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

    .line 199
    iget-boolean v2, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->mRemoveMode:Z

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    .line 202
    invoke-direct {p0, v1}, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->setDragEnabled(Z)V

    goto :goto_2

    .line 200
    :cond_2
    :goto_1
    invoke-direct {p0, v1}, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->setDragEnabled(Z)V

    :goto_2
    return v0
.end method

.method isRemoveMode()Z
    .locals 0

    .line 235
    iget-boolean p0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->mRemoveMode:Z

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 46
    check-cast p1, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter$CustomViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->onBindViewHolder(Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter$CustomViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter$CustomViewHolder;I)V
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->mAppItemList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/better/OPAppModel;

    .line 158
    invoke-virtual {p1}, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter$CustomViewHolder;->getAppDragCell()Lcom/oneplus/settings/quicklaunch/OPAppDragCell;

    move-result-object p1

    .line 159
    invoke-virtual {v0}, Lcom/oneplus/settings/better/OPAppModel;->getLabel()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 160
    invoke-virtual {p1, v1, v2}, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->setLabelAndDescription(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0}, Lcom/oneplus/settings/better/OPAppModel;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 162
    invoke-virtual {v0}, Lcom/oneplus/settings/better/OPAppModel;->getShortCutIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    .line 163
    invoke-virtual {v0}, Lcom/oneplus/settings/better/OPAppModel;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->setSmallIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/settings/better/OPAppModel;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    .line 166
    invoke-virtual {p1, v1}, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->setSmallIcon(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    const/4 v1, 0x0

    .line 173
    invoke-virtual {p1, v1}, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->setShowCheckbox(Z)V

    .line 174
    invoke-virtual {p1, v2}, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->setShowAppIcon(Z)V

    .line 175
    invoke-virtual {p1, v2}, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->setShowHandle(Z)V

    .line 176
    invoke-virtual {p1, v1}, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->setChecked(Z)V

    .line 177
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 178
    invoke-virtual {p1}, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->getCheckbox()Landroid/widget/CheckBox;

    move-result-object v0

    new-instance v1, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter$2;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter$2;-><init>(Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;Lcom/oneplus/settings/quicklaunch/OPAppDragCell;)V

    .line 179
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 187
    invoke-virtual {p1}, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->getDeleteButton()Landroid/widget/ImageView;

    move-result-object p1

    new-instance v0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter$3;

    invoke-direct {v0, p0, p2}, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter$3;-><init>(Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter$CustomViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter$CustomViewHolder;
    .locals 2

    .line 150
    iget-object p2, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/settings/R$layout;->op_app_drag_cell:I

    const/4 v1, 0x0

    .line 151
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;

    .line 152
    new-instance p2, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter$CustomViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter$CustomViewHolder;-><init>(Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;Lcom/oneplus/settings/quicklaunch/OPAppDragCell;)V

    return-object p2
.end method

.method onItemMove(II)V
    .locals 4

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 209
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->mAppItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/better/OPAppModel;

    .line 210
    iget-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->mAppItemList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 211
    iget-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->mAppItemList:Ljava/util/List;

    invoke-interface {v1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 215
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 216
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Negative position in onItemMove %d -> %d"

    .line 215
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocaleDragAndDropAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 219
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 220
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    return-void
.end method

.method removeChecked()V
    .locals 6

    .line 268
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->mAppItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_5

    .line 270
    iget-object v2, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->mAppItemList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/better/OPAppModel;

    invoke-virtual {v2}, Lcom/oneplus/settings/better/OPAppModel;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 271
    iget-object v2, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->mAppItemList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/better/OPAppModel;

    .line 272
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/oneplus/settings/utils/OPUtils;->getAllQuickLaunchStrings(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v2}, Lcom/oneplus/settings/better/OPAppModel;->getType()I

    move-result v4

    if-nez v4, :cond_0

    .line 274
    invoke-static {v2}, Lcom/oneplus/settings/utils/OPUtils;->getQuickLaunchAppString(Lcom/oneplus/settings/better/OPAppModel;)Ljava/lang/String;

    move-result-object v2

    .line 275
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 276
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v4

    invoke-virtual {v3, v4, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 277
    :cond_0
    invoke-virtual {v2}, Lcom/oneplus/settings/better/OPAppModel;->getType()I

    move-result v4

    if-ne v4, v1, :cond_1

    .line 278
    invoke-static {v2}, Lcom/oneplus/settings/utils/OPUtils;->getQuickLaunchShortcutsString(Lcom/oneplus/settings/better/OPAppModel;)Ljava/lang/String;

    move-result-object v2

    .line 279
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 280
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v4

    invoke-virtual {v3, v4, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 281
    :cond_1
    invoke-virtual {v2}, Lcom/oneplus/settings/better/OPAppModel;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 282
    invoke-static {v2}, Lcom/oneplus/settings/utils/OPUtils;->getQuickPayAppString(Lcom/oneplus/settings/better/OPAppModel;)Ljava/lang/String;

    move-result-object v2

    .line 283
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 284
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v4

    invoke-virtual {v3, v4, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 285
    :cond_2
    invoke-virtual {v2}, Lcom/oneplus/settings/better/OPAppModel;->getType()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 286
    invoke-static {v2}, Lcom/oneplus/settings/utils/OPUtils;->getQuickMiniProgrameString(Lcom/oneplus/settings/better/OPAppModel;)Ljava/lang/String;

    move-result-object v2

    .line 287
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 288
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v4

    invoke-virtual {v3, v4, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 290
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/settings/utils/OPUtils;->saveQuickLaunchStrings(Landroid/content/Context;Ljava/lang/String;)V

    .line 291
    iget-object v2, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->mAppItemList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 294
    :cond_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 295
    invoke-virtual {p0}, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->doTheUpdate()V

    return-void
.end method

.method removeItem(I)V
    .locals 4

    .line 239
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->mAppItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ltz p1, :cond_5

    if-lt p1, v0, :cond_0

    goto/16 :goto_1

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->mAppItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/better/OPAppModel;

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oneplus/settings/utils/OPUtils;->getAllQuickLaunchStrings(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v0}, Lcom/oneplus/settings/better/OPAppModel;->getType()I

    move-result v2

    if-nez v2, :cond_1

    .line 246
    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->getQuickLaunchAppString(Lcom/oneplus/settings/better/OPAppModel;)Ljava/lang/String;

    move-result-object v0

    .line 247
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 248
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 249
    :cond_1
    invoke-virtual {v0}, Lcom/oneplus/settings/better/OPAppModel;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 250
    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->getQuickLaunchShortcutsString(Lcom/oneplus/settings/better/OPAppModel;)Ljava/lang/String;

    move-result-object v0

    .line 251
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 252
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 253
    :cond_2
    invoke-virtual {v0}, Lcom/oneplus/settings/better/OPAppModel;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 254
    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->getQuickPayAppString(Lcom/oneplus/settings/better/OPAppModel;)Ljava/lang/String;

    move-result-object v0

    .line 255
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 256
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 257
    :cond_3
    invoke-virtual {v0}, Lcom/oneplus/settings/better/OPAppModel;->getType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 258
    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->getQuickMiniProgrameString(Lcom/oneplus/settings/better/OPAppModel;)Ljava/lang/String;

    move-result-object v0

    .line 259
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 260
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 262
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->saveQuickLaunchStrings(Landroid/content/Context;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->mAppItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 264
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_5
    :goto_1
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 367
    iget-boolean v0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->mRemoveMode:Z

    if-eqz v0, :cond_2

    const-string v0, "selectedLocales"

    .line 369
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 370
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->mAppItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/better/OPAppModel;

    .line 374
    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/better/OPAppModel;->setSelected(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 376
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->mAppItemList:Ljava/util/List;

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

    .line 351
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 352
    iget-object p0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->mAppItemList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/better/OPAppModel;

    .line 353
    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 354
    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string p0, "selectedLocales"

    .line 357
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method

.method public setAppList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;)V"
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->mAppItemList:Ljava/util/List;

    .line 86
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->mParentView:Landroidx/recyclerview/widget/RecyclerView;

    .line 145
    iget-object p0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method setRemoveMode(Z)V
    .locals 3

    .line 226
    iput-boolean p1, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->mRemoveMode:Z

    .line 227
    iget-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->mAppItemList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 229
    iget-object v2, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->mAppItemList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/better/OPAppModel;

    invoke-virtual {v2, v0}, Lcom/oneplus/settings/better/OPAppModel;->setSelected(Z)V

    .line 230
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateLocalesWhenAnimationStops()V
    .locals 3

    .line 313
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->mAppItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 314
    iget-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->mParentView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v1

    .line 315
    new-instance v2, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter$4;

    invoke-direct {v2, p0, v0}, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter$4;-><init>(Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;I)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)Z

    return-void
.end method
