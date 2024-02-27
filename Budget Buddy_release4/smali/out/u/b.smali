.class public final synthetic Lu/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lu/d$c;

.field public final synthetic f:Lu/h;


# direct methods
.method public synthetic constructor <init>(Lu/d$c;Lu/h;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu/b;->e:Lu/d$c;

    iput-object p2, p0, Lu/b;->f:Lu/h;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lu/b;->e:Lu/d$c;

    iget-object v1, p0, Lu/b;->f:Lu/h;

    invoke-static {v0, v1}, Lu/d;->a(Lu/d$c;Lu/h;)V

    return-void
.end method
