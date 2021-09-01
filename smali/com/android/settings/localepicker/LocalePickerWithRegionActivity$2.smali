.class Lcom/android/settings/localepicker/LocalePickerWithRegionActivity$2;
.super Ljava/lang/Object;
.source "LocalePickerWithRegionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/localepicker/LocalePickerWithRegionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/localepicker/LocalePickerWithRegionActivity;

.field final synthetic val$selector:Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;


# direct methods
.method constructor <init>(Lcom/android/settings/localepicker/LocalePickerWithRegionActivity;Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/android/settings/localepicker/LocalePickerWithRegionActivity$2;->this$0:Lcom/android/settings/localepicker/LocalePickerWithRegionActivity;

    iput-object p2, p0, Lcom/android/settings/localepicker/LocalePickerWithRegionActivity$2;->val$selector:Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 82
    iget-object v0, p0, Lcom/android/settings/localepicker/LocalePickerWithRegionActivity$2;->this$0:Lcom/android/settings/localepicker/LocalePickerWithRegionActivity;

    sget v1, Lcom/android/settings/R$id;->content_frame:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/localepicker/LocalePickerWithRegionActivity$2;->this$0:Lcom/android/settings/localepicker/LocalePickerWithRegionActivity;

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$dimen;->op_control_margin_space4:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 85
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 84
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 87
    :cond_0
    iget-object p0, p0, Lcom/android/settings/localepicker/LocalePickerWithRegionActivity$2;->val$selector:Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;

    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
