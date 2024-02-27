.class public final Landroidx/core/view/accessibility/a;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# instance fields
.field private final e:I

.field private final f:Landroidx/core/view/accessibility/f;

.field private final g:I


# direct methods
.method public constructor <init>(ILandroidx/core/view/accessibility/f;I)V
    .registers 4

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput p1, p0, Landroidx/core/view/accessibility/a;->e:I

    iput-object p2, p0, Landroidx/core/view/accessibility/a;->f:Landroidx/core/view/accessibility/f;

    iput p3, p0, Landroidx/core/view/accessibility/a;->g:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget v0, p0, Landroidx/core/view/accessibility/a;->e:I

    const-string v1, "ACCESSIBILITY_CLICKABLE_SPAN_ID"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Landroidx/core/view/accessibility/a;->f:Landroidx/core/view/accessibility/f;

    iget v1, p0, Landroidx/core/view/accessibility/a;->g:I

    invoke-virtual {v0, v1, p1}, Landroidx/core/view/accessibility/f;->F(ILandroid/os/Bundle;)Z

    return-void
.end method
