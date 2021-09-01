.class Lcom/android/settings/notification/history/NotificationHistoryActivity$1;
.super Landroid/view/ViewOutlineProvider;
.source "NotificationHistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/history/NotificationHistoryActivity;->lambda$new$2(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/history/NotificationHistoryActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/history/NotificationHistoryActivity;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$1;->this$0:Lcom/android/settings/notification/history/NotificationHistoryActivity;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 11

    .line 137
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$1;->this$0:Lcom/android/settings/notification/history/NotificationHistoryActivity;

    const/4 v1, 0x1

    new-array v2, v1, [I

    const v3, 0x1010571

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {v0, v2}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v2, 0x0

    .line 139
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    .line 140
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 141
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 142
    iget-object v2, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$1;->this$0:Lcom/android/settings/notification/history/NotificationHistoryActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010214

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 144
    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$1;->this$0:Lcom/android/settings/notification/history/NotificationHistoryActivity;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 145
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    .line 146
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int v9, p1, p0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, p2

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
