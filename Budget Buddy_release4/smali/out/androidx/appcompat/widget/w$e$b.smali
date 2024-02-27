.class Landroidx/appcompat/widget/w$e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/w$e;->m(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Landroidx/appcompat/widget/w$e;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/w$e;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/w$e$b;->e:Landroidx/appcompat/widget/w$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/w$e$b;->e:Landroidx/appcompat/widget/w$e;

    iget-object v1, v0, Landroidx/appcompat/widget/w$e;->R:Landroidx/appcompat/widget/w;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/w$e;->Q(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Landroidx/appcompat/widget/w$e$b;->e:Landroidx/appcompat/widget/w$e;

    invoke-virtual {v0}, Landroidx/appcompat/widget/w0;->dismiss()V

    goto :goto_1a

    :cond_10
    iget-object v0, p0, Landroidx/appcompat/widget/w$e$b;->e:Landroidx/appcompat/widget/w$e;

    invoke-virtual {v0}, Landroidx/appcompat/widget/w$e;->O()V

    iget-object v0, p0, Landroidx/appcompat/widget/w$e$b;->e:Landroidx/appcompat/widget/w$e;

    invoke-static {v0}, Landroidx/appcompat/widget/w$e;->N(Landroidx/appcompat/widget/w$e;)V

    :goto_1a
    return-void
.end method
