.class Landroidx/core/provider/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroidx/core/provider/g$c;

.field private final b:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroidx/core/provider/g$c;Landroid/os/Handler;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/provider/a;->a:Landroidx/core/provider/g$c;

    iput-object p2, p0, Landroidx/core/provider/a;->b:Landroid/os/Handler;

    return-void
.end method

.method private a(I)V
    .registers 5

    iget-object v0, p0, Landroidx/core/provider/a;->a:Landroidx/core/provider/g$c;

    iget-object v1, p0, Landroidx/core/provider/a;->b:Landroid/os/Handler;

    new-instance v2, Landroidx/core/provider/a$b;

    invoke-direct {v2, p0, v0, p1}, Landroidx/core/provider/a$b;-><init>(Landroidx/core/provider/a;Landroidx/core/provider/g$c;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private c(Landroid/graphics/Typeface;)V
    .registers 5

    iget-object v0, p0, Landroidx/core/provider/a;->a:Landroidx/core/provider/g$c;

    iget-object v1, p0, Landroidx/core/provider/a;->b:Landroid/os/Handler;

    new-instance v2, Landroidx/core/provider/a$a;

    invoke-direct {v2, p0, v0, p1}, Landroidx/core/provider/a$a;-><init>(Landroidx/core/provider/a;Landroidx/core/provider/g$c;Landroid/graphics/Typeface;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method b(Landroidx/core/provider/f$e;)V
    .registers 3

    invoke-virtual {p1}, Landroidx/core/provider/f$e;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object p1, p1, Landroidx/core/provider/f$e;->a:Landroid/graphics/Typeface;

    invoke-direct {p0, p1}, Landroidx/core/provider/a;->c(Landroid/graphics/Typeface;)V

    goto :goto_11

    :cond_c
    iget p1, p1, Landroidx/core/provider/f$e;->b:I

    invoke-direct {p0, p1}, Landroidx/core/provider/a;->a(I)V

    :goto_11
    return-void
.end method
