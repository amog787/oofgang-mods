.class public final synthetic Lcom/oneplus/settings/-$$Lambda$OPFontStyleActivity$ChooseFontStyleAdapter$2bQmhusvAh2JmeWOZtZJI1e1XK0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/oneplus/settings/OPFontStyleActivity$ChooseFontStyleAdapter;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/oneplus/settings/OPFontStyleActivity$ChooseFontStyleAdapter;ILcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/settings/-$$Lambda$OPFontStyleActivity$ChooseFontStyleAdapter$2bQmhusvAh2JmeWOZtZJI1e1XK0;->f$0:Lcom/oneplus/settings/OPFontStyleActivity$ChooseFontStyleAdapter;

    iput p2, p0, Lcom/oneplus/settings/-$$Lambda$OPFontStyleActivity$ChooseFontStyleAdapter$2bQmhusvAh2JmeWOZtZJI1e1XK0;->f$1:I

    iput-object p3, p0, Lcom/oneplus/settings/-$$Lambda$OPFontStyleActivity$ChooseFontStyleAdapter$2bQmhusvAh2JmeWOZtZJI1e1XK0;->f$2:Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/-$$Lambda$OPFontStyleActivity$ChooseFontStyleAdapter$2bQmhusvAh2JmeWOZtZJI1e1XK0;->f$0:Lcom/oneplus/settings/OPFontStyleActivity$ChooseFontStyleAdapter;

    iget v1, p0, Lcom/oneplus/settings/-$$Lambda$OPFontStyleActivity$ChooseFontStyleAdapter$2bQmhusvAh2JmeWOZtZJI1e1XK0;->f$1:I

    iget-object p0, p0, Lcom/oneplus/settings/-$$Lambda$OPFontStyleActivity$ChooseFontStyleAdapter$2bQmhusvAh2JmeWOZtZJI1e1XK0;->f$2:Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;

    invoke-virtual {v0, v1, p0, p1}, Lcom/oneplus/settings/OPFontStyleActivity$ChooseFontStyleAdapter;->lambda$onBindViewHolder$0$OPFontStyleActivity$ChooseFontStyleAdapter(ILcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;Landroid/view/View;)V

    return-void
.end method
