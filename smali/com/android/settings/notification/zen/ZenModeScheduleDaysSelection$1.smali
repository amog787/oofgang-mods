.class Lcom/android/settings/notification/zen/ZenModeScheduleDaysSelection$1;
.super Ljava/lang/Object;
.source "ZenModeScheduleDaysSelection.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/zen/ZenModeScheduleDaysSelection;-><init>(Landroid/content/Context;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/zen/ZenModeScheduleDaysSelection;

.field final synthetic val$day:I


# direct methods
.method constructor <init>(Lcom/android/settings/notification/zen/ZenModeScheduleDaysSelection;I)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleDaysSelection$1;->this$0:Lcom/android/settings/notification/zen/ZenModeScheduleDaysSelection;

    iput p2, p0, Lcom/android/settings/notification/zen/ZenModeScheduleDaysSelection$1;->val$day:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 66
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleDaysSelection$1;->this$0:Lcom/android/settings/notification/zen/ZenModeScheduleDaysSelection;

    invoke-static {p1}, Lcom/android/settings/notification/zen/ZenModeScheduleDaysSelection;->access$000(Lcom/android/settings/notification/zen/ZenModeScheduleDaysSelection;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleDaysSelection$1;->val$day:I

    invoke-virtual {p1, v0, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 67
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleDaysSelection$1;->this$0:Lcom/android/settings/notification/zen/ZenModeScheduleDaysSelection;

    invoke-static {p0}, Lcom/android/settings/notification/zen/ZenModeScheduleDaysSelection;->access$100(Lcom/android/settings/notification/zen/ZenModeScheduleDaysSelection;)[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/zen/ZenModeScheduleDaysSelection;->onChanged([I)V

    return-void
.end method
