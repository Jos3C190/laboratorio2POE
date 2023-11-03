
<div class="form-group mb-3">
    <label class="form-label">   {{ Form::label('brand') }}</label>
    <div>
        {{ Form::text('brand', $product->brand, ['class' => 'form-control' .
        ($errors->has('brand') ? ' is-invalid' : ''), 'placeholder' => 'Brand']) }}
        {!! $errors->first('brand', '<div class="invalid-feedback">:message</div>') !!}
        <small class="form-hint">product <b>brand</b> instruction.</small>
    </div>
</div>
<div class="form-group mb-3">
    <label class="form-label">   {{ Form::label('model') }}</label>
    <div>
        {{ Form::text('model', $product->model, ['class' => 'form-control' .
        ($errors->has('model') ? ' is-invalid' : ''), 'placeholder' => 'Model']) }}
        {!! $errors->first('model', '<div class="invalid-feedback">:message</div>') !!}
        <small class="form-hint">product <b>model</b> instruction.</small>
    </div>
</div>
<div class="form-group mb-3">
    <label class="form-label">   {{ Form::label('year') }}</label>
    <div>
        {{ Form::text('year', $product->year, ['class' => 'form-control' .
        ($errors->has('year') ? ' is-invalid' : ''), 'placeholder' => 'Year']) }}
        {!! $errors->first('year', '<div class="invalid-feedback">:message</div>') !!}
        <small class="form-hint">product <b>year</b> instruction.</small>
    </div>
</div>
<div class="form-group mb-3">
    <label class="form-label">   {{ Form::label('price') }}</label>
    <div>
        {{ Form::text('price', $product->price, ['class' => 'form-control' .
        ($errors->has('price') ? ' is-invalid' : ''), 'placeholder' => 'Price']) }}
        {!! $errors->first('price', '<div class="invalid-feedback">:message</div>') !!}
        <small class="form-hint">product <b>price</b> instruction.</small>
    </div>
</div>
<div class="form-group mb-3">
    <label class="form-label">   {{ Form::label('stock') }}</label>
    <div>
        {{ Form::text('stock', $product->stock, ['class' => 'form-control' .
        ($errors->has('stock') ? ' is-invalid' : ''), 'placeholder' => 'Stock']) }}
        {!! $errors->first('stock', '<div class="invalid-feedback">:message</div>') !!}
        <small class="form-hint">product <b>stock</b> instruction.</small>
    </div>
</div>
<div class="form-group mb-3">
    <label class="form-label">   {{ Form::label('description') }}</label>
    <div>
        {{ Form::text('description', $product->description, ['class' => 'form-control' .
        ($errors->has('description') ? ' is-invalid' : ''), 'placeholder' => 'Description']) }}
        {!! $errors->first('description', '<div class="invalid-feedback">:message</div>') !!}
        <small class="form-hint">product <b>description</b> instruction.</small>
    </div>
</div>
<div class="form-group mb-3">
    <label class="form-label">{{ Form::label('transmission') }}</label>
    <div>
        {{ Form::select('transmission', ['' => 'Choose an option', 'Manual' => 'Manual', 'Automática' => 'Automática'], $product->transmission, ['class' => 'form-select' . ($errors->has('transmission') ? ' is-invalid' : ''), 'required' => 'required']) }}
        {!! $errors->first('transmission', '<div class="invalid-feedback">:message</div>') !!}
        <small class="form-hint">product <b>transmission</b> instruction.</small>
    </div>
</div>
<div class="form-group mb-3">
    <label class="form-label">   {{ Form::label('color') }}</label>
    <div>
        {{ Form::text('color', $product->color, ['class' => 'form-control' .
        ($errors->has('color') ? ' is-invalid' : ''), 'placeholder' => 'Color']) }}
        {!! $errors->first('color', '<div class="invalid-feedback">:message</div>') !!}
        <small class="form-hint">product <b>color</b> instruction.</small>
    </div>
</div>

    <div class="form-footer">
        <div class="text-end">
            <div class="d-flex">
                <a href="{{ route('products.index') }}" class="btn btn-danger">Cancel</a>
                <button type="submit" class="btn btn-primary ms-auto ajax-submit">Submit</button>
            </div>
        </div>
    </div>
