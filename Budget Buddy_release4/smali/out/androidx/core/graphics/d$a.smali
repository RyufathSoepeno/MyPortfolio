.class public Landroidx/core/graphics/d$a;
.super Landroidx/core/provider/g$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Landroidx/core/content/res/h$e;


# direct methods
.method public constructor <init>(Landroidx/core/content/res/h$e;)V
    .registers 2

    invoke-direct {p0}, Landroidx/core/provider/g$c;-><init>()V

    iput-object p1, p0, Landroidx/core/graphics/d$a;->a:Landroidx/core/content/res/h$e;

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 3

    iget-object v0, p0, Landroidx/core/graphics/d$a;->a:Landroidx/core/content/res/h$e;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroidx/core/content/res/h$e;->h(I)V

    :cond_7
    return-void
.end method

.method public b(Landroid/graphics/Typeface;)V
    .registers 3

    iget-object v0, p0, Landroidx/core/graphics/d$a;->a:Landroidx/core/content/res/h$e;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroidx/core/content/res/h$e;->i(Landroid/graphics/Typeface;)V

    :cond_7
    return-void
.end method
